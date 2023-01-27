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
static const char *ng0 = "D:/Desktop/CO/exercise/P6/CPU_lhonez/HAZARD_M.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 31U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {37U, 0U};
static unsigned int ng5[] = {31U, 0U};



static void Initial_32_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 2, 0LL);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);

LAB1:    return;
}

static void Always_37_1(char *t0)
{
    char t4[8];
    char t5[8];
    char t8[8];
    char t10[8];
    char t27[8];
    char t48[8];
    char t61[8];
    char t69[8];
    char t112[8];
    char t126[8];
    char t127[8];
    char t128[8];
    char t139[8];
    char t155[8];
    char t169[8];
    char t185[8];
    char t193[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
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
    unsigned int t59;
    unsigned int t60;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
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
    int t93;
    int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t168;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    char *t184;
    char *t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    char *t192;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    char *t197;
    char *t198;
    char *t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;
    char *t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    int t217;
    int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    char *t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    char *t231;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    char *t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    char *t241;
    char *t242;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3736);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 2, t7, 2, t6, 2);
    t9 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t11 = (t8 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB7;

LAB6:    t12 = (t9 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t8) < *((unsigned int *)t9))
        goto LAB9;

LAB8:    *((unsigned int *)t10) = 1;

LAB9:    memset(t5, 0, 8);
    t14 = (t10 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t10);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t14) != 0)
        goto LAB13;

LAB14:    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB15;

LAB16:    t28 = *((unsigned int *)t5);
    t29 = (~(t28));
    t30 = *((unsigned int *)t21);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t21) > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t5) > 0)
        goto LAB21;

LAB22:    memcpy(t4, t32, 8);

LAB23:    t33 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t33, t4, 0, 0, 2, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t6 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (t15 >> 26);
    *((unsigned int *)t8) = t16;
    t17 = *((unsigned int *)t6);
    t18 = (t17 >> 26);
    *((unsigned int *)t2) = t18;
    t19 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t19 & 63U);
    t22 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t22 & 63U);
    t7 = ((char*)((ng4)));
    memset(t10, 0, 8);
    t9 = (t8 + 4);
    t11 = (t7 + 4);
    t23 = *((unsigned int *)t8);
    t24 = *((unsigned int *)t7);
    t28 = (t23 ^ t24);
    t29 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t11);
    t31 = (t29 ^ t30);
    t34 = (t28 | t31);
    t35 = *((unsigned int *)t9);
    t36 = *((unsigned int *)t11);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB27;

LAB24:    if (t37 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t10) = 1;

LAB27:    memset(t27, 0, 8);
    t13 = (t10 + 4);
    t40 = *((unsigned int *)t13);
    t41 = (~(t40));
    t42 = *((unsigned int *)t10);
    t43 = (t42 & t41);
    t44 = (t43 & 1U);
    if (t44 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t13) != 0)
        goto LAB30;

LAB31:    t20 = (t27 + 4);
    t45 = *((unsigned int *)t27);
    t46 = *((unsigned int *)t20);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB32;

LAB33:    memcpy(t69, t27, 8);

LAB34:    memset(t5, 0, 8);
    t101 = (t69 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (~(t102));
    t104 = *((unsigned int *)t69);
    t105 = (t104 & t103);
    t106 = (t105 & 1U);
    if (t106 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t101) != 0)
        goto LAB48;

LAB49:    t108 = (t5 + 4);
    t109 = *((unsigned int *)t5);
    t110 = *((unsigned int *)t108);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB50;

LAB51:    t122 = *((unsigned int *)t5);
    t123 = (~(t122));
    t124 = *((unsigned int *)t108);
    t125 = (t123 || t124);
    if (t125 > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t108) > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t5) > 0)
        goto LAB56;

LAB57:    memcpy(t4, t126, 8);

LAB58:    t241 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t241, t4, 0, 0, 5, 0LL);
    goto LAB2;

LAB7:    t13 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t5) = 1;
    goto LAB14;

LAB13:    t20 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB14;

LAB15:    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    t25 = ((char*)((ng3)));
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 2, t26, 2, t25, 2);
    goto LAB16;

LAB17:    t32 = ((char*)((ng1)));
    goto LAB18;

LAB19:    xsi_vlog_unsigned_bit_combine(t4, 2, t27, 2, t32, 2);
    goto LAB23;

LAB21:    memcpy(t4, t27, 8);
    goto LAB23;

LAB26:    t12 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t27) = 1;
    goto LAB31;

LAB30:    t14 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB31;

LAB32:    t21 = (t0 + 1688U);
    t25 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t48, 0, 8);
    t26 = (t25 + 4);
    t32 = (t21 + 4);
    t49 = *((unsigned int *)t25);
    t50 = *((unsigned int *)t21);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t26);
    t53 = *((unsigned int *)t32);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t26);
    t57 = *((unsigned int *)t32);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB38;

LAB35:    if (t58 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t48) = 1;

LAB38:    memset(t61, 0, 8);
    t62 = (t48 + 4);
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t65 = *((unsigned int *)t48);
    t66 = (t65 & t64);
    t67 = (t66 & 1U);
    if (t67 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t62) != 0)
        goto LAB41;

LAB42:    t70 = *((unsigned int *)t27);
    t71 = *((unsigned int *)t61);
    t72 = (t70 & t71);
    *((unsigned int *)t69) = t72;
    t73 = (t27 + 4);
    t74 = (t61 + 4);
    t75 = (t69 + 4);
    t76 = *((unsigned int *)t73);
    t77 = *((unsigned int *)t74);
    t78 = (t76 | t77);
    *((unsigned int *)t75) = t78;
    t79 = *((unsigned int *)t75);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB34;

LAB37:    t33 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t61) = 1;
    goto LAB42;

LAB41:    t68 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB42;

LAB43:    t81 = *((unsigned int *)t69);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t69) = (t81 | t82);
    t83 = (t27 + 4);
    t84 = (t61 + 4);
    t85 = *((unsigned int *)t27);
    t86 = (~(t85));
    t87 = *((unsigned int *)t83);
    t88 = (~(t87));
    t89 = *((unsigned int *)t61);
    t90 = (~(t89));
    t91 = *((unsigned int *)t84);
    t92 = (~(t91));
    t93 = (t86 & t88);
    t94 = (t90 & t92);
    t95 = (~(t93));
    t96 = (~(t94));
    t97 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t97 & t95);
    t98 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t98 & t96);
    t99 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t99 & t95);
    t100 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t100 & t96);
    goto LAB45;

LAB46:    *((unsigned int *)t5) = 1;
    goto LAB49;

LAB48:    t107 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB49;

LAB50:    t113 = (t0 + 1528U);
    t114 = *((char **)t113);
    memset(t112, 0, 8);
    t113 = (t112 + 4);
    t115 = (t114 + 4);
    t116 = *((unsigned int *)t114);
    t117 = (t116 >> 16);
    *((unsigned int *)t112) = t117;
    t118 = *((unsigned int *)t115);
    t119 = (t118 >> 16);
    *((unsigned int *)t113) = t119;
    t120 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t120 & 31U);
    t121 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t121 & 31U);
    goto LAB51;

LAB52:    t129 = (t0 + 1528U);
    t130 = *((char **)t129);
    memset(t128, 0, 8);
    t129 = (t128 + 4);
    t131 = (t130 + 4);
    t132 = *((unsigned int *)t130);
    t133 = (t132 >> 26);
    *((unsigned int *)t128) = t133;
    t134 = *((unsigned int *)t131);
    t135 = (t134 >> 26);
    *((unsigned int *)t129) = t135;
    t136 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t136 & 63U);
    t137 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t137 & 63U);
    t138 = ((char*)((ng4)));
    memset(t139, 0, 8);
    t140 = (t128 + 4);
    t141 = (t138 + 4);
    t142 = *((unsigned int *)t128);
    t143 = *((unsigned int *)t138);
    t144 = (t142 ^ t143);
    t145 = *((unsigned int *)t140);
    t146 = *((unsigned int *)t141);
    t147 = (t145 ^ t146);
    t148 = (t144 | t147);
    t149 = *((unsigned int *)t140);
    t150 = *((unsigned int *)t141);
    t151 = (t149 | t150);
    t152 = (~(t151));
    t153 = (t148 & t152);
    if (t153 != 0)
        goto LAB62;

LAB59:    if (t151 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t139) = 1;

LAB62:    memset(t155, 0, 8);
    t156 = (t139 + 4);
    t157 = *((unsigned int *)t156);
    t158 = (~(t157));
    t159 = *((unsigned int *)t139);
    t160 = (t159 & t158);
    t161 = (t160 & 1U);
    if (t161 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t156) != 0)
        goto LAB65;

LAB66:    t163 = (t155 + 4);
    t164 = *((unsigned int *)t155);
    t165 = *((unsigned int *)t163);
    t166 = (t164 || t165);
    if (t166 > 0)
        goto LAB67;

LAB68:    memcpy(t193, t155, 8);

LAB69:    memset(t127, 0, 8);
    t225 = (t193 + 4);
    t226 = *((unsigned int *)t225);
    t227 = (~(t226));
    t228 = *((unsigned int *)t193);
    t229 = (t228 & t227);
    t230 = (t229 & 1U);
    if (t230 != 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t225) != 0)
        goto LAB83;

LAB84:    t232 = (t127 + 4);
    t233 = *((unsigned int *)t127);
    t234 = *((unsigned int *)t232);
    t235 = (t233 || t234);
    if (t235 > 0)
        goto LAB85;

LAB86:    t237 = *((unsigned int *)t127);
    t238 = (~(t237));
    t239 = *((unsigned int *)t232);
    t240 = (t238 || t239);
    if (t240 > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t232) > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t127) > 0)
        goto LAB91;

LAB92:    memcpy(t126, t242, 8);

LAB93:    goto LAB53;

LAB54:    xsi_vlog_unsigned_bit_combine(t4, 5, t112, 5, t126, 5);
    goto LAB58;

LAB56:    memcpy(t4, t112, 8);
    goto LAB58;

LAB61:    t154 = (t139 + 4);
    *((unsigned int *)t139) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB62;

LAB63:    *((unsigned int *)t155) = 1;
    goto LAB66;

LAB65:    t162 = (t155 + 4);
    *((unsigned int *)t155) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB66;

LAB67:    t167 = (t0 + 1688U);
    t168 = *((char **)t167);
    t167 = ((char*)((ng1)));
    memset(t169, 0, 8);
    t170 = (t168 + 4);
    t171 = (t167 + 4);
    t172 = *((unsigned int *)t168);
    t173 = *((unsigned int *)t167);
    t174 = (t172 ^ t173);
    t175 = *((unsigned int *)t170);
    t176 = *((unsigned int *)t171);
    t177 = (t175 ^ t176);
    t178 = (t174 | t177);
    t179 = *((unsigned int *)t170);
    t180 = *((unsigned int *)t171);
    t181 = (t179 | t180);
    t182 = (~(t181));
    t183 = (t178 & t182);
    if (t183 != 0)
        goto LAB73;

LAB70:    if (t181 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t169) = 1;

LAB73:    memset(t185, 0, 8);
    t186 = (t169 + 4);
    t187 = *((unsigned int *)t186);
    t188 = (~(t187));
    t189 = *((unsigned int *)t169);
    t190 = (t189 & t188);
    t191 = (t190 & 1U);
    if (t191 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t186) != 0)
        goto LAB76;

LAB77:    t194 = *((unsigned int *)t155);
    t195 = *((unsigned int *)t185);
    t196 = (t194 & t195);
    *((unsigned int *)t193) = t196;
    t197 = (t155 + 4);
    t198 = (t185 + 4);
    t199 = (t193 + 4);
    t200 = *((unsigned int *)t197);
    t201 = *((unsigned int *)t198);
    t202 = (t200 | t201);
    *((unsigned int *)t199) = t202;
    t203 = *((unsigned int *)t199);
    t204 = (t203 != 0);
    if (t204 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB69;

LAB72:    t184 = (t169 + 4);
    *((unsigned int *)t169) = 1;
    *((unsigned int *)t184) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t185) = 1;
    goto LAB77;

LAB76:    t192 = (t185 + 4);
    *((unsigned int *)t185) = 1;
    *((unsigned int *)t192) = 1;
    goto LAB77;

LAB78:    t205 = *((unsigned int *)t193);
    t206 = *((unsigned int *)t199);
    *((unsigned int *)t193) = (t205 | t206);
    t207 = (t155 + 4);
    t208 = (t185 + 4);
    t209 = *((unsigned int *)t155);
    t210 = (~(t209));
    t211 = *((unsigned int *)t207);
    t212 = (~(t211));
    t213 = *((unsigned int *)t185);
    t214 = (~(t213));
    t215 = *((unsigned int *)t208);
    t216 = (~(t215));
    t217 = (t210 & t212);
    t218 = (t214 & t216);
    t219 = (~(t217));
    t220 = (~(t218));
    t221 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t221 & t219);
    t222 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t222 & t220);
    t223 = *((unsigned int *)t193);
    *((unsigned int *)t193) = (t223 & t219);
    t224 = *((unsigned int *)t193);
    *((unsigned int *)t193) = (t224 & t220);
    goto LAB80;

LAB81:    *((unsigned int *)t127) = 1;
    goto LAB84;

LAB83:    t231 = (t127 + 4);
    *((unsigned int *)t127) = 1;
    *((unsigned int *)t231) = 1;
    goto LAB84;

LAB85:    t236 = ((char*)((ng5)));
    goto LAB86;

LAB87:    t241 = (t0 + 1368U);
    t242 = *((char **)t241);
    goto LAB88;

LAB89:    xsi_vlog_unsigned_bit_combine(t126, 5, t236, 5, t242, 5);
    goto LAB93;

LAB91:    memcpy(t126, t236, 8);
    goto LAB93;

}


extern void work_m_00000000002324116683_0549353675_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_37_1};
	xsi_register_didat("work_m_00000000002324116683_0549353675", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000002324116683_0549353675.didat");
	xsi_register_executes(pe);
}
