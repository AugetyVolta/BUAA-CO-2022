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
static const char *ng0 = "D:/Desktop/CO/exercise/P7/CPU_hyk/BE.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {3, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {15U, 0U};
static int ng5[] = {2, 0};
static int ng6[] = {0, 0};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {1U, 0U};
static int ng10[] = {16, 0};



static void NetDecl_9_0(char *t0)
{
    char t3[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 5, 5, 2U, t2, 3, t4, 2);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 5, t3, 5, t5, 32);
    t7 = (t0 + 3936);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 31U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 4U);
    t20 = (t0 + 3824);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_10_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t38[8];
    char t39[8];
    char t42[8];
    char t69[8];
    char t70[8];
    char t73[8];
    char t78[8];
    char t115[8];
    char t116[8];
    char t119[8];
    char t149[8];
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
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
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
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t117;
    char *t118;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    char *t148;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(10, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 8);

LAB20:    t154 = (t0 + 4000);
    t155 = (t154 + 56U);
    t156 = *((char **)t155);
    t157 = (t156 + 56U);
    t158 = *((char **)t157);
    memset(t158, 0, 8);
    t159 = 15U;
    t160 = t159;
    t161 = (t3 + 4);
    t162 = *((unsigned int *)t3);
    t159 = (t159 & t162);
    t163 = *((unsigned int *)t161);
    t160 = (t160 & t163);
    t164 = (t158 + 4);
    t165 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t165 | t159);
    t166 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t166 | t160);
    xsi_driver_vfirst_trans(t154, 0, 3);
    t167 = (t0 + 3840);
    *((int *)t167) = 1;

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

LAB12:    t33 = ((char*)((ng4)));
    goto LAB13;

LAB14:    t40 = (t0 + 1208U);
    t41 = *((char **)t40);
    t40 = ((char*)((ng5)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t40 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t40);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t39, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t39 + 4);
    t66 = *((unsigned int *)t39);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t111 = *((unsigned int *)t39);
    t112 = (~(t111));
    t113 = *((unsigned int *)t65);
    t114 = (t112 || t113);
    if (t114 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t39) > 0)
        goto LAB35;

LAB36:    memcpy(t38, t115, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t38, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t39) = 1;
    goto LAB28;

LAB27:    t64 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1048U);
    t72 = *((char **)t71);
    t71 = (t0 + 1008U);
    t74 = (t71 + 72U);
    t75 = *((char **)t74);
    t76 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t73, 32, t72, t75, 2, t76, 32, 1);
    t77 = ((char*)((ng6)));
    memset(t78, 0, 8);
    t79 = (t73 + 4);
    t80 = (t77 + 4);
    t81 = *((unsigned int *)t73);
    t82 = *((unsigned int *)t77);
    t83 = (t81 ^ t82);
    t84 = *((unsigned int *)t79);
    t85 = *((unsigned int *)t80);
    t86 = (t84 ^ t85);
    t87 = (t83 | t86);
    t88 = *((unsigned int *)t79);
    t89 = *((unsigned int *)t80);
    t90 = (t88 | t89);
    t91 = (~(t90));
    t92 = (t87 & t91);
    if (t92 != 0)
        goto LAB41;

LAB38:    if (t90 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t78) = 1;

LAB41:    memset(t70, 0, 8);
    t94 = (t78 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t78);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t94) != 0)
        goto LAB44;

LAB45:    t101 = (t70 + 4);
    t102 = *((unsigned int *)t70);
    t103 = *((unsigned int *)t101);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB46;

LAB47:    t106 = *((unsigned int *)t70);
    t107 = (~(t106));
    t108 = *((unsigned int *)t101);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t101) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t70) > 0)
        goto LAB52;

LAB53:    memcpy(t69, t110, 8);

LAB54:    goto LAB30;

LAB31:    t117 = (t0 + 1208U);
    t118 = *((char **)t117);
    t117 = ((char*)((ng2)));
    memset(t119, 0, 8);
    t120 = (t118 + 4);
    t121 = (t117 + 4);
    t122 = *((unsigned int *)t118);
    t123 = *((unsigned int *)t117);
    t124 = (t122 ^ t123);
    t125 = *((unsigned int *)t120);
    t126 = *((unsigned int *)t121);
    t127 = (t125 ^ t126);
    t128 = (t124 | t127);
    t129 = *((unsigned int *)t120);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    t132 = (~(t131));
    t133 = (t128 & t132);
    if (t133 != 0)
        goto LAB58;

LAB55:    if (t131 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t119) = 1;

LAB58:    memset(t116, 0, 8);
    t135 = (t119 + 4);
    t136 = *((unsigned int *)t135);
    t137 = (~(t136));
    t138 = *((unsigned int *)t119);
    t139 = (t138 & t137);
    t140 = (t139 & 1U);
    if (t140 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t135) != 0)
        goto LAB61;

LAB62:    t142 = (t116 + 4);
    t143 = *((unsigned int *)t116);
    t144 = *((unsigned int *)t142);
    t145 = (t143 || t144);
    if (t145 > 0)
        goto LAB63;

LAB64:    t150 = *((unsigned int *)t116);
    t151 = (~(t150));
    t152 = *((unsigned int *)t142);
    t153 = (t151 || t152);
    if (t153 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t142) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t116) > 0)
        goto LAB69;

LAB70:    memcpy(t115, t147, 8);

LAB71:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t38, 32, t69, 32, t115, 32);
    goto LAB37;

LAB35:    memcpy(t38, t69, 8);
    goto LAB37;

LAB40:    t93 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t70) = 1;
    goto LAB45;

LAB44:    t100 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB45;

LAB46:    t105 = ((char*)((ng7)));
    goto LAB47;

LAB48:    t110 = ((char*)((ng8)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t69, 32, t105, 32, t110, 32);
    goto LAB54;

LAB52:    memcpy(t69, t105, 8);
    goto LAB54;

LAB57:    t134 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t134) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t116) = 1;
    goto LAB62;

LAB61:    t141 = (t116 + 4);
    *((unsigned int *)t116) = 1;
    *((unsigned int *)t141) = 1;
    goto LAB62;

LAB63:    t146 = ((char*)((ng9)));
    t147 = (t0 + 1048U);
    t148 = *((char **)t147);
    memset(t149, 0, 8);
    xsi_vlog_unsigned_lshift(t149, 32, t146, 32, t148, 2);
    goto LAB64;

LAB65:    t147 = ((char*)((ng6)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t115, 32, t149, 32, t147, 32);
    goto LAB71;

LAB69:    memcpy(t115, t149, 8);
    goto LAB71;

}

static void Cont_13_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t39[8];
    char t40[8];
    char t42[8];
    char t69[8];
    char t70[8];
    char t73[8];
    char t78[8];
    char t112[8];
    char t117[8];
    char t118[8];
    char t121[8];
    char t151[8];
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t41;
    char *t43;
    char *t44;
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
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t119;
    char *t120;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    char *t149;
    char *t150;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    char *t161;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t156 = (t0 + 4064);
    t157 = (t156 + 56U);
    t158 = *((char **)t157);
    t159 = (t158 + 56U);
    t160 = *((char **)t159);
    memcpy(t160, t3, 8);
    xsi_driver_vfirst_trans(t156, 0, 31);
    t161 = (t0 + 3856);
    *((int *)t161) = 1;

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

LAB12:    t33 = (t0 + 1368U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 1208U);
    t41 = *((char **)t33);
    t33 = ((char*)((ng5)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t40, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t40 + 4);
    t66 = *((unsigned int *)t40);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t113 = *((unsigned int *)t40);
    t114 = (~(t113));
    t115 = *((unsigned int *)t65);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t40) > 0)
        goto LAB35;

LAB36:    memcpy(t39, t117, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB27:    t64 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1048U);
    t72 = *((char **)t71);
    t71 = (t0 + 1008U);
    t74 = (t71 + 72U);
    t75 = *((char **)t74);
    t76 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t73, 32, t72, t75, 2, t76, 32, 1);
    t77 = ((char*)((ng6)));
    memset(t78, 0, 8);
    t79 = (t73 + 4);
    t80 = (t77 + 4);
    t81 = *((unsigned int *)t73);
    t82 = *((unsigned int *)t77);
    t83 = (t81 ^ t82);
    t84 = *((unsigned int *)t79);
    t85 = *((unsigned int *)t80);
    t86 = (t84 ^ t85);
    t87 = (t83 | t86);
    t88 = *((unsigned int *)t79);
    t89 = *((unsigned int *)t80);
    t90 = (t88 | t89);
    t91 = (~(t90));
    t92 = (t87 & t91);
    if (t92 != 0)
        goto LAB41;

LAB38:    if (t90 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t78) = 1;

LAB41:    memset(t70, 0, 8);
    t94 = (t78 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t78);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t94) != 0)
        goto LAB44;

LAB45:    t101 = (t70 + 4);
    t102 = *((unsigned int *)t70);
    t103 = *((unsigned int *)t101);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB46;

LAB47:    t107 = *((unsigned int *)t70);
    t108 = (~(t107));
    t109 = *((unsigned int *)t101);
    t110 = (t108 || t109);
    if (t110 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t101) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t70) > 0)
        goto LAB52;

LAB53:    memcpy(t69, t112, 8);

LAB54:    goto LAB30;

LAB31:    t119 = (t0 + 1208U);
    t120 = *((char **)t119);
    t119 = ((char*)((ng2)));
    memset(t121, 0, 8);
    t122 = (t120 + 4);
    t123 = (t119 + 4);
    t124 = *((unsigned int *)t120);
    t125 = *((unsigned int *)t119);
    t126 = (t124 ^ t125);
    t127 = *((unsigned int *)t122);
    t128 = *((unsigned int *)t123);
    t129 = (t127 ^ t128);
    t130 = (t126 | t129);
    t131 = *((unsigned int *)t122);
    t132 = *((unsigned int *)t123);
    t133 = (t131 | t132);
    t134 = (~(t133));
    t135 = (t130 & t134);
    if (t135 != 0)
        goto LAB58;

LAB55:    if (t133 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t121) = 1;

LAB58:    memset(t118, 0, 8);
    t137 = (t121 + 4);
    t138 = *((unsigned int *)t137);
    t139 = (~(t138));
    t140 = *((unsigned int *)t121);
    t141 = (t140 & t139);
    t142 = (t141 & 1U);
    if (t142 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t137) != 0)
        goto LAB61;

LAB62:    t144 = (t118 + 4);
    t145 = *((unsigned int *)t118);
    t146 = *((unsigned int *)t144);
    t147 = (t145 || t146);
    if (t147 > 0)
        goto LAB63;

LAB64:    t152 = *((unsigned int *)t118);
    t153 = (~(t152));
    t154 = *((unsigned int *)t144);
    t155 = (t153 || t154);
    if (t155 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t144) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t118) > 0)
        goto LAB69;

LAB70:    memcpy(t117, t148, 8);

LAB71:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t39, 32, t69, 32, t117, 32);
    goto LAB37;

LAB35:    memcpy(t39, t69, 8);
    goto LAB37;

LAB40:    t93 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t70) = 1;
    goto LAB45;

LAB44:    t100 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB45;

LAB46:    t105 = (t0 + 1368U);
    t106 = *((char **)t105);
    goto LAB47;

LAB48:    t105 = (t0 + 1368U);
    t111 = *((char **)t105);
    t105 = ((char*)((ng10)));
    memset(t112, 0, 8);
    xsi_vlog_unsigned_lshift(t112, 32, t111, 32, t105, 32);
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t69, 32, t106, 32, t112, 32);
    goto LAB54;

LAB52:    memcpy(t69, t106, 8);
    goto LAB54;

LAB57:    t136 = (t121 + 4);
    *((unsigned int *)t121) = 1;
    *((unsigned int *)t136) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t118) = 1;
    goto LAB62;

LAB61:    t143 = (t118 + 4);
    *((unsigned int *)t118) = 1;
    *((unsigned int *)t143) = 1;
    goto LAB62;

LAB63:    t148 = (t0 + 1368U);
    t149 = *((char **)t148);
    t148 = (t0 + 1848U);
    t150 = *((char **)t148);
    memset(t151, 0, 8);
    xsi_vlog_unsigned_lshift(t151, 32, t149, 32, t150, 5);
    goto LAB64;

LAB65:    t148 = ((char*)((ng6)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t117, 32, t151, 32, t148, 32);
    goto LAB71;

LAB69:    memcpy(t117, t151, 8);
    goto LAB71;

}


extern void work_m_00000000001074455807_4140825114_init()
{
	static char *pe[] = {(void *)NetDecl_9_0,(void *)Cont_10_1,(void *)Cont_13_2};
	xsi_register_didat("work_m_00000000001074455807_4140825114", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001074455807_4140825114.didat");
	xsi_register_executes(pe);
}
