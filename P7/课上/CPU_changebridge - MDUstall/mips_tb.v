`timescale 1ns/1ps

module mips_txt;

	reg clk;
	reg reset;
	reg interrupt;

	wire [31:0] macroscopic_pc;

	wire [31:0] i_inst_addr;
	wire [31:0] i_inst_rdata;

	wire [31:0] m_data_addr;
	wire [31:0] m_data_rdata;
	wire [31:0] m_data_wdata;
	wire [3 :0] m_data_byteen;

	wire [31:0] m_int_addr;
	wire [3 :0] m_int_byteen;

	wire [31:0] m_inst_addr;

	wire		w_grf_we;
	wire [4 :0] w_grf_addr;
	wire [31:0] w_grf_wdata;

	wire [31:0] w_inst_addr;

	mips uut(
		.clk(clk),
		.reset(reset),
		.interrupt(interrupt),
		.macroscopic_pc(macroscopic_pc),

		.i_inst_addr(i_inst_addr),
		.i_inst_rdata(i_inst_rdata),

		.m_data_addr(m_data_addr),
		.m_data_rdata(m_data_rdata),
		.m_data_wdata(m_data_wdata),
		.m_data_byteen(m_data_byteen),

		.m_int_addr(m_int_addr),
		.m_int_byteen(m_int_byteen),

		.m_inst_addr(m_inst_addr),

		.w_grf_we(w_grf_we),
		.w_grf_addr(w_grf_addr),
		.w_grf_wdata(w_grf_wdata),

		.w_inst_addr(w_inst_addr)
	);

	initial begin
		clk <= 0;
		reset <= 1;
		interrupt <= 0;
		#20 reset <= 0;
	end

	integer i;
	reg [31:0] fixed_addr;
	reg [31:0] fixed_wdata;
	reg [31:0] data[0:4095];
	reg [31:0] inst[0:5119];

	// ----------- For Instructions -----------

	assign m_data_rdata = data[(m_data_addr >> 2) % 5120];
	assign i_inst_rdata = inst[((i_inst_addr - 32'h3000) >> 2) % 5120];

	initial begin
		$readmemh("code.txt", inst);
		for (i = 0; i < 5120; i = i + 1) data[i] <= 0;
	end

	// ----------- For Data Memory -----------

	always @(*) begin
		fixed_wdata = data[(m_data_addr >> 2) & 4095];
		fixed_addr = m_data_addr & 32'hfffffffc;
		if (m_data_byteen[3]) fixed_wdata[31:24] = m_data_wdata[31:24];
		if (m_data_byteen[2]) fixed_wdata[23:16] = m_data_wdata[23:16];
		if (m_data_byteen[1]) fixed_wdata[15: 8] = m_data_wdata[15: 8];
		if (m_data_byteen[0]) fixed_wdata[7 : 0] = m_data_wdata[7 : 0];
	end

	always @(posedge clk) begin
		if (reset) for (i = 0; i < 4096; i = i + 1) data[i] <= 0;
		else if (|m_data_byteen && fixed_addr >> 2 < 4096) begin
			data[fixed_addr >> 2] <= fixed_wdata;
			$display("@%h: *%h <= %h", m_inst_addr, fixed_addr, fixed_wdata);
		end
	end

	// ----------- For Registers -----------

	always @(posedge clk) begin
		if (~reset) begin
			if (w_grf_we && (w_grf_addr != 0)) begin
				$display("@%h: $%d <= %h", w_inst_addr, w_grf_addr, w_grf_wdata);
			end
		end
	end

	// ----------- For Interrupt -----------

	wire [31:0] fixed_macroscopic_pc;

	assign fixed_macroscopic_pc = macroscopic_pc & 32'hfffffffc;

	parameter	delay_pc_1 = 32'h00003190,
				delay_pc_2 = 32'h000031f8,
				delay_pc_3 = 32'h0000332c,
				delay_6_pc_1 = 32'h00003774,
				delay_3_pc_1 = 32'h000039b0,
				div_13_pc_1 = 32'h0000380c,
				mult_6_pc_1 = 32'h00003a40,
				lw_first_pc_1 = 32'h00003098,
				lw_first_pc_2 = 32'h00003398,
				lw_first_pc_3 = 32'h00003548;

	integer delay_count_1,
			delay_count_2,
			delay_count_3,
			delay_6_count_1,
			delay_3_count_1,
			div_13_count_1,
			mult_6_count_1,
			lw_first_count_1,
			lw_first_count_2,
			lw_first_count_3;

	integer needInterrupt;
	integer notInterrupt_pc;

	initial begin
		delay_count_1 = 0;
		delay_count_2 = 0;
		delay_count_3 = 0;
		delay_6_count_1 = 0;
		delay_3_count_1 = 0;
		div_13_count_1 = 0;
		mult_6_count_1 = 0;
		lw_first_count_1 = 0;
		lw_first_count_2 = 0;
		lw_first_count_3 = 0;
		notInterrupt_pc = 32'h00003000;

		$display("#delay@%h",delay_pc_1-4);
		$display("#delay@%h",delay_pc_2-4);
		$display("#delay@%h",delay_pc_3-4);
		$display("#delay@%h",delay_6_pc_1);
		$display("#delay@%h",delay_3_pc_1);

		$display("#interrupt@10");
		$display("#end@");
	end

	always @(negedge clk) begin
		if (reset) begin
			needInterrupt = 0;
			interrupt = 0;
		end
		else begin
			if (interrupt) begin
				if (|m_int_byteen && (m_int_addr & 32'hfffffffc) == 32'h7f20) begin
					interrupt = 0;
					notInterrupt_pc = 32'h00003000;
				end
			end
			else if (needInterrupt != 0) begin
				if (needInterrupt == 1) begin
					if (fixed_macroscopic_pc != notInterrupt_pc) begin
						needInterrupt = 0;
						interrupt = 1;
					end
				end
				else begin
					needInterrupt = needInterrupt - 1;
				end
			end
			else begin
				case (fixed_macroscopic_pc)
					delay_pc_1:
						begin
							if (delay_count_1 == 0) begin
								delay_count_1 = 1;
								interrupt = 1;
							end
						end
					delay_pc_2:
						begin
							if (delay_count_2 == 0) begin
								delay_count_2 = 1;
								interrupt = 1;
							end
						end
					delay_pc_3:
						begin
							if (delay_count_3 == 0) begin
								delay_count_3 = 1;
								interrupt = 1;
							end
						end
					delay_6_pc_1:
						begin
							if (delay_6_count_1 == 0) begin
								delay_6_count_1 = 1;
								needInterrupt = 6;
							end
						end
					delay_3_pc_1:
						begin
							if (delay_3_count_1 == 0) begin
								delay_3_count_1 = 1;
								needInterrupt = 3;
							end
						end
					div_13_pc_1:
						begin
							if (div_13_count_1 == 0) begin
								div_13_count_1 = 1;
								needInterrupt = 13;
							end
						end
					mult_6_pc_1:
						begin
							if (mult_6_count_1 == 0) begin
								mult_6_count_1 = 1;
								needInterrupt = 6;
							end
						end
					lw_first_pc_1:
						begin
							if (lw_first_count_1 == 0) begin
								lw_first_count_1 = 1;
								needInterrupt = 1;
							end
						end
					lw_first_pc_2:
						begin
							if (lw_first_count_2 == 0) begin
								lw_first_count_2 = 1;
								needInterrupt = 1;
							end
						end
					lw_first_pc_3:
						begin
							if (lw_first_count_3 == 0) begin
								lw_first_count_3 = 1;
								needInterrupt = 1;
							end
						end
				endcase
			end
		end
	end


	always #2 clk <= ~clk;

endmodule
