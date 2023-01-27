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
static const char *ng0 = "D:/Desktop/CO/exercise/P4/CPU_rlb/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {7U, 0U};



static void Cont_29_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
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
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t4);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t2);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t5) = 1;

LAB7:    t20 = (t0 + 4944);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t5 + 4);
    t28 = *((unsigned int *)t5);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t33 = (t0 + 4800);
    *((int *)t33) = 1;

LAB1:    return;
LAB6:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Always_33_1(char *t0)
{
    char t7[8];
    char t10[8];
    char t26[8];
    char t27[8];
    char t35[8];
    char t73[8];
    char t76[8];
    char t100[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t74;
    char *t75;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    unsigned int t108;
    int t109;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4816);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB8;

LAB7:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB8;

LAB11:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB9;

LAB10:    memset(t10, 0, 8);
    t11 = (t7 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t7);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t11) != 0)
        goto LAB14;

LAB15:    t18 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB16;

LAB17:    memcpy(t35, t10, 8);

LAB18:    t67 = (t35 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t35);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB37:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t5, 32);
    t6 = (t7 + 4);
    t12 = *((unsigned int *)t6);
    t13 = (~(t12));
    t14 = *((unsigned int *)t7);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB38;

LAB39:    goto LAB2;

LAB8:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB10;

LAB9:    *((unsigned int *)t7) = 1;
    goto LAB10;

LAB12:    *((unsigned int *)t10) = 1;
    goto LAB15;

LAB14:    t17 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB15;

LAB16:    t22 = (t0 + 2568);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = ((char*)((ng3)));
    memset(t26, 0, 8);
    xsi_vlog_signed_less(t26, 32, t24, 32, t25, 32);
    memset(t27, 0, 8);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t26);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t28) != 0)
        goto LAB21;

LAB22:    t36 = *((unsigned int *)t10);
    t37 = *((unsigned int *)t27);
    t38 = (t36 & t37);
    *((unsigned int *)t35) = t38;
    t39 = (t10 + 4);
    t40 = (t27 + 4);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB18;

LAB19:    *((unsigned int *)t27) = 1;
    goto LAB22;

LAB21:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB22;

LAB23:    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t35) = (t47 | t48);
    t49 = (t10 + 4);
    t50 = (t27 + 4);
    t51 = *((unsigned int *)t10);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t27);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t65 & t61);
    t66 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t66 & t62);
    goto LAB25;

LAB26:    xsi_set_current_line(35, ng0);

LAB28:    xsi_set_current_line(36, ng0);
    t74 = (t0 + 1048U);
    t75 = *((char **)t74);
    t74 = (t0 + 1008U);
    t77 = (t74 + 72U);
    t78 = *((char **)t77);
    t79 = (t0 + 2568);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    xsi_vlog_generic_get_index_select_value(t76, 1, t75, t78, 2, t81, 32, 1);
    memset(t73, 0, 8);
    t82 = (t76 + 4);
    t83 = *((unsigned int *)t82);
    t84 = (~(t83));
    t85 = *((unsigned int *)t76);
    t86 = (t85 & t84);
    t87 = (t86 & 1U);
    if (t87 != 0)
        goto LAB32;

LAB30:    if (*((unsigned int *)t82) == 0)
        goto LAB29;

LAB31:    t88 = (t73 + 4);
    *((unsigned int *)t73) = 1;
    *((unsigned int *)t88) = 1;

LAB32:    t89 = (t73 + 4);
    t90 = (t76 + 4);
    t91 = *((unsigned int *)t76);
    t92 = (~(t91));
    *((unsigned int *)t73) = t92;
    *((unsigned int *)t89) = 0;
    if (*((unsigned int *)t90) != 0)
        goto LAB34;

LAB33:    t97 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t97 & 1U);
    t98 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t98 & 1U);
    t99 = (t0 + 2408);
    t101 = (t0 + 2408);
    t102 = (t101 + 72U);
    t103 = *((char **)t102);
    t104 = (t0 + 2568);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    xsi_vlog_generic_convert_bit_index(t100, t103, 2, t106, 32, 1);
    t107 = (t100 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (!(t108));
    if (t109 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB6;

LAB29:    *((unsigned int *)t73) = 1;
    goto LAB32;

LAB34:    t93 = *((unsigned int *)t73);
    t94 = *((unsigned int *)t90);
    *((unsigned int *)t73) = (t93 | t94);
    t95 = *((unsigned int *)t89);
    t96 = *((unsigned int *)t90);
    *((unsigned int *)t89) = (t95 | t96);
    goto LAB33;

LAB35:    xsi_vlogvar_assign_value(t99, t73, 0, *((unsigned int *)t100), 1);
    goto LAB36;

LAB38:    xsi_set_current_line(38, ng0);

LAB40:    xsi_set_current_line(39, ng0);
    t8 = (t0 + 1048U);
    t9 = *((char **)t8);
    t8 = (t0 + 1008U);
    t11 = (t8 + 72U);
    t17 = *((char **)t11);
    t18 = (t0 + 2568);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    xsi_vlog_generic_get_index_select_value(t10, 1, t9, t17, 2, t23, 32, 1);
    t24 = (t0 + 2408);
    t25 = (t0 + 2408);
    t28 = (t25 + 72U);
    t34 = *((char **)t28);
    t39 = (t0 + 2568);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_convert_bit_index(t26, t34, 2, t41, 32, 1);
    t49 = (t26 + 4);
    t19 = *((unsigned int *)t49);
    t59 = (!(t19));
    if (t59 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB37;

LAB41:    xsi_vlogvar_assign_value(t24, t10, 0, *((unsigned int *)t26), 1);
    goto LAB42;

}

static void Cont_42_2(char *t0)
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

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4832);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_43_3(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t6 = (t4 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t3) < *((unsigned int *)t4))
        goto LAB6;

LAB7:    t8 = (t0 + 5072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t12, 0, 8);
    t13 = 1U;
    t14 = t13;
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t5);
    t13 = (t13 & t16);
    t17 = *((unsigned int *)t15);
    t14 = (t14 & t17);
    t18 = (t12 + 4);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 | t13);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t20 | t14);
    xsi_driver_vfirst_trans(t8, 0, 0);
    t21 = (t0 + 4848);
    *((int *)t21) = 1;

LAB1:    return;
LAB5:    t7 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB7;

}

static void Cont_44_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t44[8];
    char t74[8];
    char t79[8];
    char t80[8];
    char t82[8];
    char t112[8];
    char t143[8];
    char t144[8];
    char t147[8];
    char t177[8];
    char t212[8];
    char t213[8];
    char t216[8];
    char t249[8];
    char t250[8];
    char t252[8];
    char t284[8];
    char t289[8];
    char t290[8];
    char t292[8];
    char t322[8];
    char t329[8];
    char t330[8];
    char t333[8];
    char t363[8];
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
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
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
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
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
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t145;
    char *t146;
    char *t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
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
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    char *t175;
    char *t176;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    char *t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    char *t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    int t200;
    int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    char *t214;
    char *t215;
    char *t217;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
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
    unsigned int t236;
    unsigned int t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    char *t243;
    char *t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    char *t251;
    char *t253;
    char *t254;
    unsigned int t255;
    unsigned int t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    char *t267;
    char *t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    char *t274;
    char *t275;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    char *t281;
    char *t282;
    char *t283;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    char *t291;
    char *t293;
    char *t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    char *t307;
    char *t308;
    unsigned int t309;
    unsigned int t310;
    unsigned int t311;
    unsigned int t312;
    unsigned int t313;
    char *t314;
    char *t315;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    char *t319;
    char *t320;
    char *t321;
    char *t323;
    char *t324;
    unsigned int t325;
    unsigned int t326;
    unsigned int t327;
    unsigned int t328;
    char *t331;
    char *t332;
    char *t334;
    char *t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    unsigned int t341;
    unsigned int t342;
    unsigned int t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    char *t348;
    char *t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    unsigned int t353;
    unsigned int t354;
    char *t355;
    char *t356;
    unsigned int t357;
    unsigned int t358;
    unsigned int t359;
    char *t360;
    char *t361;
    char *t362;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    char *t368;
    char *t369;
    char *t370;
    char *t371;
    char *t372;
    char *t373;

LAB0:    t1 = (t0 + 4480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t368 = (t0 + 5136);
    t369 = (t368 + 56U);
    t370 = *((char **)t369);
    t371 = (t370 + 56U);
    t372 = *((char **)t371);
    memcpy(t372, t3, 8);
    xsi_driver_vfirst_trans(t368, 0, 31);
    t373 = (t0 + 4864);
    *((int *)t373) = 1;

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

LAB12:    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    t33 = (t0 + 1208U);
    t35 = *((char **)t33);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 32, t34, 32, t35, 32);
    goto LAB13;

LAB14:    t33 = (t0 + 1368U);
    t43 = *((char **)t33);
    t33 = ((char*)((ng5)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t33 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t33);
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

LAB24:    memset(t42, 0, 8);
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

LAB28:    t67 = (t42 + 4);
    t68 = *((unsigned int *)t42);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t75 = *((unsigned int *)t42);
    t76 = (~(t75));
    t77 = *((unsigned int *)t67);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t79, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t66 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1048U);
    t72 = *((char **)t71);
    t71 = (t0 + 1208U);
    t73 = *((char **)t71);
    memset(t74, 0, 8);
    xsi_vlog_unsigned_minus(t74, 32, t72, 32, t73, 32);
    goto LAB30;

LAB31:    t71 = (t0 + 1368U);
    t81 = *((char **)t71);
    t71 = ((char*)((ng6)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t71 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t71);
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

LAB41:    memset(t80, 0, 8);
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

LAB45:    t105 = (t80 + 4);
    t106 = *((unsigned int *)t80);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t139 = *((unsigned int *)t80);
    t140 = (~(t139));
    t141 = *((unsigned int *)t105);
    t142 = (t140 || t141);
    if (t142 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t80) > 0)
        goto LAB52;

LAB53:    memcpy(t79, t143, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t74, 32, t79, 32);
    goto LAB37;

LAB35:    memcpy(t41, t74, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t80) = 1;
    goto LAB45;

LAB44:    t104 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 1048U);
    t110 = *((char **)t109);
    t109 = (t0 + 1208U);
    t111 = *((char **)t109);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t109 = (t110 + 4);
    t116 = (t111 + 4);
    t117 = (t112 + 4);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t116);
    t120 = (t118 | t119);
    *((unsigned int *)t117) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 != 0);
    if (t122 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB47;

LAB48:    t145 = (t0 + 1368U);
    t146 = *((char **)t145);
    t145 = ((char*)((ng7)));
    memset(t147, 0, 8);
    t148 = (t146 + 4);
    t149 = (t145 + 4);
    t150 = *((unsigned int *)t146);
    t151 = *((unsigned int *)t145);
    t152 = (t150 ^ t151);
    t153 = *((unsigned int *)t148);
    t154 = *((unsigned int *)t149);
    t155 = (t153 ^ t154);
    t156 = (t152 | t155);
    t157 = *((unsigned int *)t148);
    t158 = *((unsigned int *)t149);
    t159 = (t157 | t158);
    t160 = (~(t159));
    t161 = (t156 & t160);
    if (t161 != 0)
        goto LAB61;

LAB58:    if (t159 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t147) = 1;

LAB61:    memset(t144, 0, 8);
    t163 = (t147 + 4);
    t164 = *((unsigned int *)t163);
    t165 = (~(t164));
    t166 = *((unsigned int *)t147);
    t167 = (t166 & t165);
    t168 = (t167 & 1U);
    if (t168 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t163) != 0)
        goto LAB64;

LAB65:    t170 = (t144 + 4);
    t171 = *((unsigned int *)t144);
    t172 = *((unsigned int *)t170);
    t173 = (t171 || t172);
    if (t173 > 0)
        goto LAB66;

LAB67:    t208 = *((unsigned int *)t144);
    t209 = (~(t208));
    t210 = *((unsigned int *)t170);
    t211 = (t209 || t210);
    if (t211 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t170) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t144) > 0)
        goto LAB72;

LAB73:    memcpy(t143, t212, 8);

LAB74:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t79, 32, t112, 32, t143, 32);
    goto LAB54;

LAB52:    memcpy(t79, t112, 8);
    goto LAB54;

LAB55:    t123 = *((unsigned int *)t112);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t112) = (t123 | t124);
    t125 = (t110 + 4);
    t126 = (t111 + 4);
    t127 = *((unsigned int *)t125);
    t128 = (~(t127));
    t129 = *((unsigned int *)t110);
    t130 = (t129 & t128);
    t131 = *((unsigned int *)t126);
    t132 = (~(t131));
    t133 = *((unsigned int *)t111);
    t134 = (t133 & t132);
    t135 = (~(t130));
    t136 = (~(t134));
    t137 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t137 & t135);
    t138 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t138 & t136);
    goto LAB57;

LAB60:    t162 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t144) = 1;
    goto LAB65;

LAB64:    t169 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t169) = 1;
    goto LAB65;

LAB66:    t174 = (t0 + 1048U);
    t175 = *((char **)t174);
    t174 = (t0 + 1208U);
    t176 = *((char **)t174);
    t178 = *((unsigned int *)t175);
    t179 = *((unsigned int *)t176);
    t180 = (t178 & t179);
    *((unsigned int *)t177) = t180;
    t174 = (t175 + 4);
    t181 = (t176 + 4);
    t182 = (t177 + 4);
    t183 = *((unsigned int *)t174);
    t184 = *((unsigned int *)t181);
    t185 = (t183 | t184);
    *((unsigned int *)t182) = t185;
    t186 = *((unsigned int *)t182);
    t187 = (t186 != 0);
    if (t187 == 1)
        goto LAB75;

LAB76:
LAB77:    goto LAB67;

LAB68:    t214 = (t0 + 1368U);
    t215 = *((char **)t214);
    t214 = ((char*)((ng8)));
    memset(t216, 0, 8);
    t217 = (t215 + 4);
    t218 = (t214 + 4);
    t219 = *((unsigned int *)t215);
    t220 = *((unsigned int *)t214);
    t221 = (t219 ^ t220);
    t222 = *((unsigned int *)t217);
    t223 = *((unsigned int *)t218);
    t224 = (t222 ^ t223);
    t225 = (t221 | t224);
    t226 = *((unsigned int *)t217);
    t227 = *((unsigned int *)t218);
    t228 = (t226 | t227);
    t229 = (~(t228));
    t230 = (t225 & t229);
    if (t230 != 0)
        goto LAB81;

LAB78:    if (t228 != 0)
        goto LAB80;

LAB79:    *((unsigned int *)t216) = 1;

LAB81:    memset(t213, 0, 8);
    t232 = (t216 + 4);
    t233 = *((unsigned int *)t232);
    t234 = (~(t233));
    t235 = *((unsigned int *)t216);
    t236 = (t235 & t234);
    t237 = (t236 & 1U);
    if (t237 != 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t232) != 0)
        goto LAB84;

LAB85:    t239 = (t213 + 4);
    t240 = *((unsigned int *)t213);
    t241 = *((unsigned int *)t239);
    t242 = (t240 || t241);
    if (t242 > 0)
        goto LAB86;

LAB87:    t245 = *((unsigned int *)t213);
    t246 = (~(t245));
    t247 = *((unsigned int *)t239);
    t248 = (t246 || t247);
    if (t248 > 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t239) > 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t213) > 0)
        goto LAB92;

LAB93:    memcpy(t212, t249, 8);

LAB94:    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t143, 32, t177, 32, t212, 32);
    goto LAB74;

LAB72:    memcpy(t143, t177, 8);
    goto LAB74;

LAB75:    t188 = *((unsigned int *)t177);
    t189 = *((unsigned int *)t182);
    *((unsigned int *)t177) = (t188 | t189);
    t190 = (t175 + 4);
    t191 = (t176 + 4);
    t192 = *((unsigned int *)t175);
    t193 = (~(t192));
    t194 = *((unsigned int *)t190);
    t195 = (~(t194));
    t196 = *((unsigned int *)t176);
    t197 = (~(t196));
    t198 = *((unsigned int *)t191);
    t199 = (~(t198));
    t200 = (t193 & t195);
    t201 = (t197 & t199);
    t202 = (~(t200));
    t203 = (~(t201));
    t204 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t204 & t202);
    t205 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t205 & t203);
    t206 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t206 & t202);
    t207 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t207 & t203);
    goto LAB77;

LAB80:    t231 = (t216 + 4);
    *((unsigned int *)t216) = 1;
    *((unsigned int *)t231) = 1;
    goto LAB81;

LAB82:    *((unsigned int *)t213) = 1;
    goto LAB85;

LAB84:    t238 = (t213 + 4);
    *((unsigned int *)t213) = 1;
    *((unsigned int *)t238) = 1;
    goto LAB85;

LAB86:    t243 = (t0 + 2008U);
    t244 = *((char **)t243);
    goto LAB87;

LAB88:    t243 = (t0 + 1368U);
    t251 = *((char **)t243);
    t243 = ((char*)((ng9)));
    memset(t252, 0, 8);
    t253 = (t251 + 4);
    t254 = (t243 + 4);
    t255 = *((unsigned int *)t251);
    t256 = *((unsigned int *)t243);
    t257 = (t255 ^ t256);
    t258 = *((unsigned int *)t253);
    t259 = *((unsigned int *)t254);
    t260 = (t258 ^ t259);
    t261 = (t257 | t260);
    t262 = *((unsigned int *)t253);
    t263 = *((unsigned int *)t254);
    t264 = (t262 | t263);
    t265 = (~(t264));
    t266 = (t261 & t265);
    if (t266 != 0)
        goto LAB98;

LAB95:    if (t264 != 0)
        goto LAB97;

LAB96:    *((unsigned int *)t252) = 1;

LAB98:    memset(t250, 0, 8);
    t268 = (t252 + 4);
    t269 = *((unsigned int *)t268);
    t270 = (~(t269));
    t271 = *((unsigned int *)t252);
    t272 = (t271 & t270);
    t273 = (t272 & 1U);
    if (t273 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t268) != 0)
        goto LAB101;

LAB102:    t275 = (t250 + 4);
    t276 = *((unsigned int *)t250);
    t277 = *((unsigned int *)t275);
    t278 = (t276 || t277);
    if (t278 > 0)
        goto LAB103;

LAB104:    t285 = *((unsigned int *)t250);
    t286 = (~(t285));
    t287 = *((unsigned int *)t275);
    t288 = (t286 || t287);
    if (t288 > 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t275) > 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t250) > 0)
        goto LAB109;

LAB110:    memcpy(t249, t289, 8);

LAB111:    goto LAB89;

LAB90:    xsi_vlog_unsigned_bit_combine(t212, 32, t244, 32, t249, 32);
    goto LAB94;

LAB92:    memcpy(t212, t244, 8);
    goto LAB94;

LAB97:    t267 = (t252 + 4);
    *((unsigned int *)t252) = 1;
    *((unsigned int *)t267) = 1;
    goto LAB98;

LAB99:    *((unsigned int *)t250) = 1;
    goto LAB102;

LAB101:    t274 = (t250 + 4);
    *((unsigned int *)t250) = 1;
    *((unsigned int *)t274) = 1;
    goto LAB102;

LAB103:    t281 = (t0 + 1048U);
    t282 = *((char **)t281);
    t281 = (t0 + 1208U);
    t283 = *((char **)t281);
    memset(t284, 0, 8);
    xsi_vlog_signed_arith_rshift(t284, 32, t282, 32, t283, 32);
    goto LAB104;

LAB105:    t281 = (t0 + 1368U);
    t291 = *((char **)t281);
    t281 = ((char*)((ng10)));
    memset(t292, 0, 8);
    t293 = (t291 + 4);
    t294 = (t281 + 4);
    t295 = *((unsigned int *)t291);
    t296 = *((unsigned int *)t281);
    t297 = (t295 ^ t296);
    t298 = *((unsigned int *)t293);
    t299 = *((unsigned int *)t294);
    t300 = (t298 ^ t299);
    t301 = (t297 | t300);
    t302 = *((unsigned int *)t293);
    t303 = *((unsigned int *)t294);
    t304 = (t302 | t303);
    t305 = (~(t304));
    t306 = (t301 & t305);
    if (t306 != 0)
        goto LAB115;

LAB112:    if (t304 != 0)
        goto LAB114;

LAB113:    *((unsigned int *)t292) = 1;

LAB115:    memset(t290, 0, 8);
    t308 = (t292 + 4);
    t309 = *((unsigned int *)t308);
    t310 = (~(t309));
    t311 = *((unsigned int *)t292);
    t312 = (t311 & t310);
    t313 = (t312 & 1U);
    if (t313 != 0)
        goto LAB116;

LAB117:    if (*((unsigned int *)t308) != 0)
        goto LAB118;

LAB119:    t315 = (t290 + 4);
    t316 = *((unsigned int *)t290);
    t317 = *((unsigned int *)t315);
    t318 = (t316 || t317);
    if (t318 > 0)
        goto LAB120;

LAB121:    t325 = *((unsigned int *)t290);
    t326 = (~(t325));
    t327 = *((unsigned int *)t315);
    t328 = (t326 || t327);
    if (t328 > 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t315) > 0)
        goto LAB124;

LAB125:    if (*((unsigned int *)t290) > 0)
        goto LAB126;

LAB127:    memcpy(t289, t329, 8);

LAB128:    goto LAB106;

LAB107:    xsi_vlog_unsigned_bit_combine(t249, 32, t284, 32, t289, 32);
    goto LAB111;

LAB109:    memcpy(t249, t284, 8);
    goto LAB111;

LAB114:    t307 = (t292 + 4);
    *((unsigned int *)t292) = 1;
    *((unsigned int *)t307) = 1;
    goto LAB115;

LAB116:    *((unsigned int *)t290) = 1;
    goto LAB119;

LAB118:    t314 = (t290 + 4);
    *((unsigned int *)t290) = 1;
    *((unsigned int *)t314) = 1;
    goto LAB119;

LAB120:    t319 = (t0 + 1048U);
    t320 = *((char **)t319);
    t319 = (t0 + 1208U);
    t321 = *((char **)t319);
    memset(t322, 0, 8);
    t319 = (t320 + 4);
    if (*((unsigned int *)t319) != 0)
        goto LAB130;

LAB129:    t323 = (t321 + 4);
    if (*((unsigned int *)t323) != 0)
        goto LAB130;

LAB133:    if (*((unsigned int *)t320) < *((unsigned int *)t321))
        goto LAB131;

LAB132:    goto LAB121;

LAB122:    t331 = (t0 + 1368U);
    t332 = *((char **)t331);
    t331 = ((char*)((ng11)));
    memset(t333, 0, 8);
    t334 = (t332 + 4);
    t335 = (t331 + 4);
    t336 = *((unsigned int *)t332);
    t337 = *((unsigned int *)t331);
    t338 = (t336 ^ t337);
    t339 = *((unsigned int *)t334);
    t340 = *((unsigned int *)t335);
    t341 = (t339 ^ t340);
    t342 = (t338 | t341);
    t343 = *((unsigned int *)t334);
    t344 = *((unsigned int *)t335);
    t345 = (t343 | t344);
    t346 = (~(t345));
    t347 = (t342 & t346);
    if (t347 != 0)
        goto LAB137;

LAB134:    if (t345 != 0)
        goto LAB136;

LAB135:    *((unsigned int *)t333) = 1;

LAB137:    memset(t330, 0, 8);
    t349 = (t333 + 4);
    t350 = *((unsigned int *)t349);
    t351 = (~(t350));
    t352 = *((unsigned int *)t333);
    t353 = (t352 & t351);
    t354 = (t353 & 1U);
    if (t354 != 0)
        goto LAB138;

LAB139:    if (*((unsigned int *)t349) != 0)
        goto LAB140;

LAB141:    t356 = (t330 + 4);
    t357 = *((unsigned int *)t330);
    t358 = *((unsigned int *)t356);
    t359 = (t357 || t358);
    if (t359 > 0)
        goto LAB142;

LAB143:    t364 = *((unsigned int *)t330);
    t365 = (~(t364));
    t366 = *((unsigned int *)t356);
    t367 = (t365 || t366);
    if (t367 > 0)
        goto LAB144;

LAB145:    if (*((unsigned int *)t356) > 0)
        goto LAB146;

LAB147:    if (*((unsigned int *)t330) > 0)
        goto LAB148;

LAB149:    memcpy(t329, t360, 8);

LAB150:    goto LAB123;

LAB124:    xsi_vlog_unsigned_bit_combine(t289, 32, t322, 32, t329, 32);
    goto LAB128;

LAB126:    memcpy(t289, t322, 8);
    goto LAB128;

LAB130:    t324 = (t322 + 4);
    *((unsigned int *)t322) = 1;
    *((unsigned int *)t324) = 1;
    goto LAB132;

LAB131:    *((unsigned int *)t322) = 1;
    goto LAB132;

LAB136:    t348 = (t333 + 4);
    *((unsigned int *)t333) = 1;
    *((unsigned int *)t348) = 1;
    goto LAB137;

LAB138:    *((unsigned int *)t330) = 1;
    goto LAB141;

LAB140:    t355 = (t330 + 4);
    *((unsigned int *)t330) = 1;
    *((unsigned int *)t355) = 1;
    goto LAB141;

LAB142:    t360 = (t0 + 1048U);
    t361 = *((char **)t360);
    t360 = (t0 + 1208U);
    t362 = *((char **)t360);
    memset(t363, 0, 8);
    xsi_vlog_unsigned_lshift(t363, 32, t361, 32, t362, 32);
    goto LAB143;

LAB144:    t360 = ((char*)((ng1)));
    goto LAB145;

LAB146:    xsi_vlog_unsigned_bit_combine(t329, 32, t363, 32, t360, 32);
    goto LAB150;

LAB148:    memcpy(t329, t363, 8);
    goto LAB150;

}


extern void work_m_00000000000351635998_0886308060_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Always_33_1,(void *)Cont_42_2,(void *)Cont_43_3,(void *)Cont_44_4};
	xsi_register_didat("work_m_00000000000351635998_0886308060", "isim/tb_isim_beh.exe.sim/work/m_00000000000351635998_0886308060.didat");
	xsi_register_executes(pe);
}
