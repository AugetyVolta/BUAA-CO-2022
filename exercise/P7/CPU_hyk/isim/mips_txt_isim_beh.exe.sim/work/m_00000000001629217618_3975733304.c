/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Desktop/CO/exercise/P7/CPU_hyk/CP0.v";
static int ng1[] = {0, 0};
static int ng2[] = {12, 0};
static int ng3[] = {13, 0};
static int ng4[] = {14, 0};
static int ng5[] = {15, 0};
static int ng6[] = {10, 0};
static int ng7[] = {1, 0};
static unsigned int ng8[] = {0U, 0U};
static int ng9[] = {6, 0};
static int ng10[] = {2, 0};
static unsigned int ng11[] = {1U, 0U};
static int ng12[] = {4, 0};
static int ng13[] = {31, 0};



static void Initial_32_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Cont_38_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char t78[8];
    char t79[8];
    char t82[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t80;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t117 = (t0 + 6896);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    t120 = (t119 + 56U);
    t121 = *((char **)t120);
    memcpy(t121, t3, 8);
    xsi_driver_vfirst_trans(t117, 0, 31);
    t122 = (t0 + 6736);
    *((int *)t122) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3688);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t42 = (t0 + 1528U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng3)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t74 = *((unsigned int *)t41);
    t75 = (~(t74));
    t76 = *((unsigned int *)t67);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t78, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 3848);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    goto LAB30;

LAB31:    t80 = (t0 + 1528U);
    t81 = *((char **)t80);
    t80 = ((char*)((ng4)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t80 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t80);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    memset(t79, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t98) != 0)
        goto LAB44;

LAB45:    t105 = (t79 + 4);
    t106 = *((unsigned int *)t79);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t112 = *((unsigned int *)t79);
    t113 = (~(t112));
    t114 = *((unsigned int *)t105);
    t115 = (t113 || t114);
    if (t115 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t79) > 0)
        goto LAB52;

LAB53:    memcpy(t78, t116, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 32, t73, 32, t78, 32);
    goto LAB37;

LAB35:    memcpy(t40, t73, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t79) = 1;
    goto LAB45;

LAB44:    t104 = (t79 + 4);
    *((unsigned int *)t79) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 4008);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    goto LAB47;

LAB48:    t116 = ((char*)((ng1)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t78, 32, t111, 32, t116, 32);
    goto LAB54;

LAB52:    memcpy(t78, t111, 8);
    goto LAB54;

}

static void NetDecl_42_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t17[8];
    char t58[8];
    char t67[8];
    char t99[8];
    char t103[8];
    char t119[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t100;
    char *t101;
    char *t102;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    int t143;
    int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3688);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t4 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 10);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 10);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 63U);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 63U);
    t15 = (t0 + 2328U);
    t16 = *((char **)t15);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t16);
    t20 = (t18 & t19);
    *((unsigned int *)t17) = t20;
    t15 = (t4 + 4);
    t21 = (t16 + 4);
    t22 = (t17 + 4);
    t23 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t21);
    t25 = (t23 | t24);
    *((unsigned int *)t22) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB4;

LAB5:
LAB6:    memset(t3, 0, 8);
    t48 = (t17 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t17);
    t52 = (t51 & t50);
    t53 = (t52 & 63U);
    if (t53 != 0)
        goto LAB7;

LAB8:    if (*((unsigned int *)t48) != 0)
        goto LAB9;

LAB10:    t55 = (t0 + 3688);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memset(t58, 0, 8);
    t59 = (t58 + 4);
    t60 = (t57 + 4);
    t61 = *((unsigned int *)t57);
    t62 = (t61 >> 0);
    t63 = (t62 & 1);
    *((unsigned int *)t58) = t63;
    t64 = *((unsigned int *)t60);
    t65 = (t64 >> 0);
    t66 = (t65 & 1);
    *((unsigned int *)t59) = t66;
    t68 = *((unsigned int *)t3);
    t69 = *((unsigned int *)t58);
    t70 = (t68 & t69);
    *((unsigned int *)t67) = t70;
    t71 = (t3 + 4);
    t72 = (t58 + 4);
    t73 = (t67 + 4);
    t74 = *((unsigned int *)t71);
    t75 = *((unsigned int *)t72);
    t76 = (t74 | t75);
    *((unsigned int *)t73) = t76;
    t77 = *((unsigned int *)t73);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB11;

LAB12:
LAB13:    t100 = (t0 + 3688);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    memset(t103, 0, 8);
    t104 = (t103 + 4);
    t105 = (t102 + 4);
    t106 = *((unsigned int *)t102);
    t107 = (t106 >> 1);
    t108 = (t107 & 1);
    *((unsigned int *)t103) = t108;
    t109 = *((unsigned int *)t105);
    t110 = (t109 >> 1);
    t111 = (t110 & 1);
    *((unsigned int *)t104) = t111;
    memset(t99, 0, 8);
    t112 = (t103 + 4);
    t113 = *((unsigned int *)t112);
    t114 = (~(t113));
    t115 = *((unsigned int *)t103);
    t116 = (t115 & t114);
    t117 = (t116 & 1U);
    if (t117 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t112) == 0)
        goto LAB14;

LAB16:    t118 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t118) = 1;

LAB17:    t120 = *((unsigned int *)t67);
    t121 = *((unsigned int *)t99);
    t122 = (t120 & t121);
    *((unsigned int *)t119) = t122;
    t123 = (t67 + 4);
    t124 = (t99 + 4);
    t125 = (t119 + 4);
    t126 = *((unsigned int *)t123);
    t127 = *((unsigned int *)t124);
    t128 = (t126 | t127);
    *((unsigned int *)t125) = t128;
    t129 = *((unsigned int *)t125);
    t130 = (t129 != 0);
    if (t130 == 1)
        goto LAB18;

LAB19:
LAB20:    t151 = (t0 + 6960);
    t152 = (t151 + 56U);
    t153 = *((char **)t152);
    t154 = (t153 + 56U);
    t155 = *((char **)t154);
    memset(t155, 0, 8);
    t156 = 1U;
    t157 = t156;
    t158 = (t119 + 4);
    t159 = *((unsigned int *)t119);
    t156 = (t156 & t159);
    t160 = *((unsigned int *)t158);
    t157 = (t157 & t160);
    t161 = (t155 + 4);
    t162 = *((unsigned int *)t155);
    *((unsigned int *)t155) = (t162 | t156);
    t163 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t163 | t157);
    xsi_driver_vfirst_trans(t151, 0, 0U);
    t164 = (t0 + 6752);
    *((int *)t164) = 1;

LAB1:    return;
LAB4:    t28 = *((unsigned int *)t17);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t17) = (t28 | t29);
    t30 = (t4 + 4);
    t31 = (t16 + 4);
    t32 = *((unsigned int *)t4);
    t33 = (~(t32));
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t16);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (~(t38));
    t40 = (t33 & t35);
    t41 = (t37 & t39);
    t42 = (~(t40));
    t43 = (~(t41));
    t44 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t44 & t42);
    t45 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t45 & t43);
    t46 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t46 & t42);
    t47 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t47 & t43);
    goto LAB6;

LAB7:    *((unsigned int *)t3) = 1;
    goto LAB10;

LAB9:    t54 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB10;

LAB11:    t79 = *((unsigned int *)t67);
    t80 = *((unsigned int *)t73);
    *((unsigned int *)t67) = (t79 | t80);
    t81 = (t3 + 4);
    t82 = (t58 + 4);
    t83 = *((unsigned int *)t3);
    t84 = (~(t83));
    t85 = *((unsigned int *)t81);
    t86 = (~(t85));
    t87 = *((unsigned int *)t58);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (~(t89));
    t91 = (t84 & t86);
    t92 = (t88 & t90);
    t93 = (~(t91));
    t94 = (~(t92));
    t95 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t95 & t93);
    t96 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t96 & t94);
    t97 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t97 & t93);
    t98 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t98 & t94);
    goto LAB13;

LAB14:    *((unsigned int *)t99) = 1;
    goto LAB17;

LAB18:    t131 = *((unsigned int *)t119);
    t132 = *((unsigned int *)t125);
    *((unsigned int *)t119) = (t131 | t132);
    t133 = (t67 + 4);
    t134 = (t99 + 4);
    t135 = *((unsigned int *)t67);
    t136 = (~(t135));
    t137 = *((unsigned int *)t133);
    t138 = (~(t137));
    t139 = *((unsigned int *)t99);
    t140 = (~(t139));
    t141 = *((unsigned int *)t134);
    t142 = (~(t141));
    t143 = (t136 & t138);
    t144 = (t140 & t142);
    t145 = (~(t143));
    t146 = (~(t144));
    t147 = *((unsigned int *)t125);
    *((unsigned int *)t125) = (t147 & t145);
    t148 = *((unsigned int *)t125);
    *((unsigned int *)t125) = (t148 & t146);
    t149 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t149 & t145);
    t150 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t150 & t146);
    goto LAB20;

}

static void NetDecl_44_3(char *t0)
{
    char t3[8];
    char t11[8];
    char t15[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 31U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t0 + 3688);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t16 = (t15 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t16) = t23;
    memset(t11, 0, 8);
    t24 = (t15 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t15);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t24) == 0)
        goto LAB8;

LAB10:    t30 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t30) = 1;

LAB11:    t32 = *((unsigned int *)t3);
    t33 = *((unsigned int *)t11);
    t34 = (t32 & t33);
    *((unsigned int *)t31) = t34;
    t35 = (t3 + 4);
    t36 = (t11 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB12;

LAB13:
LAB14:    t63 = (t0 + 7024);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memset(t67, 0, 8);
    t68 = 1U;
    t69 = t68;
    t70 = (t31 + 4);
    t71 = *((unsigned int *)t31);
    t68 = (t68 & t71);
    t72 = *((unsigned int *)t70);
    t69 = (t69 & t72);
    t73 = (t67 + 4);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t74 | t68);
    t75 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t75 | t69);
    xsi_driver_vfirst_trans(t63, 0, 0U);
    t76 = (t0 + 6768);
    *((int *)t76) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t11) = 1;
    goto LAB11;

LAB12:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    t45 = (t3 + 4);
    t46 = (t11 + 4);
    t47 = *((unsigned int *)t3);
    t48 = (~(t47));
    t49 = *((unsigned int *)t45);
    t50 = (~(t49));
    t51 = *((unsigned int *)t11);
    t52 = (~(t51));
    t53 = *((unsigned int *)t46);
    t54 = (~(t53));
    t55 = (t48 & t50);
    t56 = (t52 & t54);
    t57 = (~(t55));
    t58 = (~(t56));
    t59 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t59 & t57);
    t60 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t60 & t58);
    t61 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t61 & t57);
    t62 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t62 & t58);
    goto LAB14;

}

static void Cont_46_4(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 5920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 | t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t32 = (t0 + 7088);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t36, 0, 8);
    t37 = 1U;
    t38 = t37;
    t39 = (t5 + 4);
    t40 = *((unsigned int *)t5);
    t37 = (t37 & t40);
    t41 = *((unsigned int *)t39);
    t38 = (t38 & t41);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t43 | t37);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t44 | t38);
    xsi_driver_vfirst_trans(t32, 0, 0);
    t45 = (t0 + 6784);
    *((int *)t45) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t18);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = *((unsigned int *)t19);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (~(t23));
    t29 = (~(t27));
    t30 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t30 & t28);
    t31 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t31 & t29);
    goto LAB6;

}

static void Cont_48_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 6168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 6800);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_49_6(char *t0)
{
    char t13[8];
    char t14[8];
    char t15[8];
    char t55[8];
    char t56[8];
    char t57[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    int t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;

LAB0:    t1 = (t0 + 6416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 6816);
    *((int *)t2) = 1;
    t3 = (t0 + 6448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t0 + 3848);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    t16 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t13, t14, t15, ((int*)(t11)), 2, t12, 32, 1, t16, 32, 1);
    t17 = (t13 + 4);
    t6 = *((unsigned int *)t17);
    t18 = (!(t6));
    t19 = (t14 + 4);
    t7 = *((unsigned int *)t19);
    t20 = (!(t7));
    t21 = (t18 && t20);
    t22 = (t15 + 4);
    t8 = *((unsigned int *)t22);
    t23 = (!(t8));
    t24 = (t21 && t23);
    if (t24 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB16;

LAB13:    if (t32 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t13) = 1;

LAB16:    t12 = (t13 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t13);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB25;

LAB22:    if (t32 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t13) = 1;

LAB25:    t12 = (t13 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t13);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB69;

LAB66:    if (t32 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t13) = 1;

LAB69:    t12 = (t13 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t13);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB70;

LAB71:
LAB72:
LAB28:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(50, ng0);

LAB9:    xsi_set_current_line(51, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB11:    t9 = *((unsigned int *)t15);
    t25 = (t9 + 0);
    t10 = *((unsigned int *)t13);
    t26 = *((unsigned int *)t14);
    t27 = (t10 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t25, *((unsigned int *)t14), t28, 0LL);
    goto LAB12;

LAB15:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(56, ng0);
    t16 = ((char*)((ng1)));
    t17 = (t0 + 3688);
    t19 = (t0 + 3688);
    t22 = (t19 + 72U);
    t40 = *((char **)t22);
    t41 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t14, t40, 2, t41, 32, 1);
    t42 = (t14 + 4);
    t43 = *((unsigned int *)t42);
    t18 = (!(t43));
    if (t18 == 1)
        goto LAB20;

LAB21:    goto LAB19;

LAB20:    xsi_vlogvar_wait_assign_value(t17, t16, 0, *((unsigned int *)t14), 1, 0LL);
    goto LAB21;

LAB24:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(57, ng0);

LAB29:    xsi_set_current_line(58, ng0);
    t16 = (t0 + 3128U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t16 = (t17 + 4);
    t43 = *((unsigned int *)t16);
    t44 = (~(t43));
    t45 = *((unsigned int *)t17);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t16) != 0)
        goto LAB32;

LAB33:    t22 = (t15 + 4);
    t48 = *((unsigned int *)t15);
    t49 = *((unsigned int *)t22);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB34;

LAB35:    t51 = *((unsigned int *)t15);
    t52 = (~(t51));
    t53 = *((unsigned int *)t22);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t22) > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t15) > 0)
        goto LAB40;

LAB41:    memcpy(t14, t42, 8);

LAB42:    t41 = (t0 + 3848);
    t58 = (t0 + 3848);
    t59 = (t58 + 72U);
    t60 = *((char **)t59);
    t61 = ((char*)((ng9)));
    t62 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t55, t56, t57, ((int*)(t60)), 2, t61, 32, 1, t62, 32, 1);
    t63 = (t55 + 4);
    t64 = *((unsigned int *)t63);
    t18 = (!(t64));
    t65 = (t56 + 4);
    t66 = *((unsigned int *)t65);
    t20 = (!(t66));
    t21 = (t18 && t20);
    t67 = (t57 + 4);
    t68 = *((unsigned int *)t67);
    t23 = (!(t68));
    t24 = (t21 && t23);
    if (t24 == 1)
        goto LAB43;

LAB44:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3688);
    t4 = (t0 + 3688);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t16 = (t13 + 4);
    t6 = *((unsigned int *)t16);
    t18 = (!(t6));
    if (t18 == 1)
        goto LAB45;

LAB46:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t15, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB50;

LAB47:    if (t32 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t15) = 1;

LAB50:    memset(t14, 0, 8);
    t12 = (t15 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t15);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t12) != 0)
        goto LAB53;

LAB54:    t17 = (t14 + 4);
    t43 = *((unsigned int *)t14);
    t44 = *((unsigned int *)t17);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB55;

LAB56:    t46 = *((unsigned int *)t14);
    t47 = (~(t46));
    t48 = *((unsigned int *)t17);
    t49 = (t47 || t48);
    if (t49 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t17) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t14) > 0)
        goto LAB61;

LAB62:    memcpy(t13, t41, 8);

LAB63:    t40 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t40, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t0 + 3848);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng13)));
    xsi_vlog_generic_convert_bit_index(t13, t11, 2, t12, 32, 1);
    t16 = (t13 + 4);
    t6 = *((unsigned int *)t16);
    t18 = (!(t6));
    if (t18 == 1)
        goto LAB64;

LAB65:    goto LAB28;

LAB30:    *((unsigned int *)t15) = 1;
    goto LAB33;

LAB32:    t19 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB33;

LAB34:    t40 = ((char*)((ng8)));
    goto LAB35;

LAB36:    t41 = (t0 + 2168U);
    t42 = *((char **)t41);
    goto LAB37;

LAB38:    xsi_vlog_unsigned_bit_combine(t14, 5, t40, 5, t42, 5);
    goto LAB42;

LAB40:    memcpy(t14, t40, 8);
    goto LAB42;

LAB43:    t69 = *((unsigned int *)t57);
    t25 = (t69 + 0);
    t70 = *((unsigned int *)t55);
    t71 = *((unsigned int *)t56);
    t27 = (t70 - t71);
    t28 = (t27 + 1);
    xsi_vlogvar_wait_assign_value(t41, t14, t25, *((unsigned int *)t56), t28, 0LL);
    goto LAB44;

LAB45:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB46;

LAB49:    t11 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB50;

LAB51:    *((unsigned int *)t14) = 1;
    goto LAB54;

LAB53:    t16 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB54;

LAB55:    t19 = (t0 + 1848U);
    t22 = *((char **)t19);
    t19 = ((char*)((ng12)));
    memset(t55, 0, 8);
    xsi_vlog_unsigned_minus(t55, 32, t22, 32, t19, 32);
    goto LAB56;

LAB57:    t40 = (t0 + 1848U);
    t41 = *((char **)t40);
    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t13, 32, t55, 32, t41, 32);
    goto LAB63;

LAB61:    memcpy(t13, t55, 8);
    goto LAB63;

LAB64:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB65;

LAB68:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(62, ng0);

LAB73:    xsi_set_current_line(63, ng0);
    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    memset(t14, 0, 8);
    t19 = (t17 + 4);
    t22 = (t16 + 4);
    t43 = *((unsigned int *)t17);
    t44 = *((unsigned int *)t16);
    t45 = (t43 ^ t44);
    t46 = *((unsigned int *)t19);
    t47 = *((unsigned int *)t22);
    t48 = (t46 ^ t47);
    t49 = (t45 | t48);
    t50 = *((unsigned int *)t19);
    t51 = *((unsigned int *)t22);
    t52 = (t50 | t51);
    t53 = (~(t52));
    t54 = (t49 & t53);
    if (t54 != 0)
        goto LAB77;

LAB74:    if (t52 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t14) = 1;

LAB77:    t41 = (t14 + 4);
    t64 = *((unsigned int *)t41);
    t66 = (~(t64));
    t68 = *((unsigned int *)t14);
    t69 = (t68 & t66);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB78;

LAB79:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t26 = (t9 ^ t10);
    t29 = (t8 | t26);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t5);
    t32 = (t30 | t31);
    t33 = (~(t32));
    t34 = (t29 & t33);
    if (t34 != 0)
        goto LAB84;

LAB81:    if (t32 != 0)
        goto LAB83;

LAB82:    *((unsigned int *)t13) = 1;

LAB84:    t12 = (t13 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t13);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB85;

LAB86:
LAB87:
LAB80:    goto LAB72;

LAB76:    t40 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB77;

LAB78:    xsi_set_current_line(63, ng0);
    t42 = (t0 + 1688U);
    t58 = *((char **)t42);
    t42 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t42, t58, 0, 0, 32, 0LL);
    goto LAB80;

LAB83:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB84;

LAB85:    xsi_set_current_line(64, ng0);
    t16 = (t0 + 1688U);
    t17 = *((char **)t16);
    t16 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t16, t17, 0, 0, 32, 0LL);
    goto LAB87;

}


extern void work_m_00000000001629217618_3975733304_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Cont_38_1,(void *)NetDecl_42_2,(void *)NetDecl_44_3,(void *)Cont_46_4,(void *)Cont_48_5,(void *)Always_49_6};
	xsi_register_didat("work_m_00000000001629217618_3975733304", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001629217618_3975733304.didat");
	xsi_register_executes(pe);
}
