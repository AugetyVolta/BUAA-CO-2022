`timescale 1ns / 1ps
module DE(
    input [1:0] addr,
    input [31:0] din,
    input [2:0] DEop,
    output reg [31:0] DEout
);
reg [7:0] nowByte;
always @* begin
    case(DEop)
    3'b000: DEout=din;//no extend：lw
    3'b001: begin //unsigned byte extend
        if(addr==2'b00) nowByte=din[7:0];
        else if(addr==2'b01) nowByte=din[15:8];
        else if(addr==2'b10) nowByte=din[23:16];
        else nowByte=din[31:24];
        DEout={24'd0,nowByte};
    end
    3'b010: begin //signed byte extend
        if(addr==2'b00) nowByte=din[7:0];
        else if(addr==2'b01) nowByte=din[15:8];
        else if(addr==2'b10) nowByte=din[23:16];
        else nowByte=din[31:24];
        DEout={{24{nowByte[7]}},nowByte};
    end
    3'b011: begin //unsigned half word extend
        if(addr[1]==0) DEout={16'h0000,din[15:0]};
        else DEout={16'h0000,din[31:16]};
    end
    default: begin //signed half word extend
        if(addr[1]==0) DEout={{16{din[15]}},din[15:0]};
        else DEout={{16{din[31]}},din[31:16]};
    end
    endcase
end
endmodule