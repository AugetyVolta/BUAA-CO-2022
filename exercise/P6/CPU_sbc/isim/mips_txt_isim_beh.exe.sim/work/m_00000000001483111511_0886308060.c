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
static const char *ng0 = "D:/Desktop/CO/exercise/P6/CPU_sbc/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {4, 0};
static int ng4[] = {1, 0};
static int ng5[] = {2, 0};
static int ng6[] = {3, 0};
static int ng7[] = {8, 0};
static int ng8[] = {16, 0};
static int ng9[] = {24, 0};
static int ng10[] = {32, 0};
static unsigned int ng11[] = {1U, 0U};
static unsigned int ng12[] = {3U, 0U};
static unsigned int ng13[] = {2U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {5U, 0U};
static unsigned int ng16[] = {6U, 0U};
static unsigned int ng17[] = {7U, 0U};



static void Always_36_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t16[8];
    char t42[8];
    char t44[8];
    char t45[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4784);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(41, ng0);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB12:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 255U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 255U);
    t5 = (t0 + 2408);
    t7 = (t0 + 2408);
    t13 = (t7 + 72U);
    t14 = *((char **)t13);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t30 = *((unsigned int *)t21);
    t28 = (!(t30));
    t22 = (t16 + 4);
    t33 = *((unsigned int *)t22);
    t31 = (!(t33));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 8);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 8);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 255U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 255U);
    t5 = (t0 + 2408);
    t7 = (t0 + 2408);
    t13 = (t7 + 72U);
    t14 = *((char **)t13);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t30 = *((unsigned int *)t21);
    t28 = (!(t30));
    t22 = (t16 + 4);
    t33 = *((unsigned int *)t22);
    t31 = (!(t33));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 16);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 16);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 255U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 255U);
    t5 = (t0 + 2408);
    t7 = (t0 + 2408);
    t13 = (t7 + 72U);
    t14 = *((char **)t13);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t30 = *((unsigned int *)t21);
    t28 = (!(t30));
    t22 = (t16 + 4);
    t33 = *((unsigned int *)t22);
    t31 = (!(t33));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 24);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 24);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 255U);
    t27 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t27 & 255U);
    t5 = (t0 + 2408);
    t7 = (t0 + 2408);
    t13 = (t7 + 72U);
    t14 = *((char **)t13);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t15, t16, t14, t19, 2, 1, t20, 32, 1);
    t21 = (t15 + 4);
    t30 = *((unsigned int *)t21);
    t28 = (!(t30));
    t22 = (t16 + 4);
    t33 = *((unsigned int *)t22);
    t31 = (!(t33));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(49, ng0);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB26:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(52, ng0);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB32:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(55, ng0);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB38:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(58, ng0);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB44:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB50:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB51;

LAB52:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 2248);
    t17 = (t0 + 2248);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2248);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB10:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t16), t36);
    goto LAB11;

LAB13:    xsi_set_current_line(41, ng0);

LAB15:    xsi_set_current_line(42, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 2408);
    t17 = (t0 + 2408);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2408);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB12;

LAB16:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t16), t36);
    goto LAB17;

LAB18:    t34 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t35 = (t34 - t37);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t16), t36);
    goto LAB19;

LAB20:    t34 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t35 = (t34 - t37);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t16), t36);
    goto LAB21;

LAB22:    t34 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t35 = (t34 - t37);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t16), t36);
    goto LAB23;

LAB24:    t34 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t35 = (t34 - t37);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t16), t36);
    goto LAB25;

LAB27:    xsi_set_current_line(49, ng0);

LAB29:    xsi_set_current_line(50, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t18 = (t0 + 2248);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t15, 8, t17, t20, t23, 2, 1, t24, 32, 1);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    t25 = (t0 + 1168U);
    t29 = (t25 + 72U);
    t38 = *((char **)t29);
    t39 = (t0 + 2888);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_index_select_value(t16, 8, t26, t38, 2, t41, 32, 1);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 8, t15, 8, t16, 8);
    t43 = (t0 + 2248);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t44, t45, t48, t51, 2, 1, t52, 32, 1);
    t53 = (t44 + 4);
    t27 = *((unsigned int *)t53);
    t28 = (!(t27));
    t54 = (t45 + 4);
    t30 = *((unsigned int *)t54);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB26;

LAB30:    t33 = *((unsigned int *)t44);
    t34 = *((unsigned int *)t45);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t43, t42, 0, *((unsigned int *)t45), t36);
    goto LAB31;

LAB33:    xsi_set_current_line(52, ng0);

LAB35:    xsi_set_current_line(53, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t18 = (t0 + 2248);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t15, 8, t17, t20, t23, 2, 1, t24, 32, 1);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    t25 = (t0 + 1168U);
    t29 = (t25 + 72U);
    t38 = *((char **)t29);
    t39 = (t0 + 2888);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_index_select_value(t16, 8, t26, t38, 2, t41, 32, 1);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 8, t15, 8, t16, 8);
    t43 = (t0 + 2248);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t44, t45, t48, t51, 2, 1, t52, 32, 1);
    t53 = (t44 + 4);
    t27 = *((unsigned int *)t53);
    t28 = (!(t27));
    t54 = (t45 + 4);
    t30 = *((unsigned int *)t54);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB36;

LAB37:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB32;

LAB36:    t33 = *((unsigned int *)t44);
    t34 = *((unsigned int *)t45);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t43, t42, 0, *((unsigned int *)t45), t36);
    goto LAB37;

LAB39:    xsi_set_current_line(55, ng0);

LAB41:    xsi_set_current_line(56, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t18 = (t0 + 2248);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t15, 8, t17, t20, t23, 2, 1, t24, 32, 1);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    t25 = (t0 + 1168U);
    t29 = (t25 + 72U);
    t38 = *((char **)t29);
    t39 = (t0 + 2888);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_index_select_value(t16, 8, t26, t38, 2, t41, 32, 1);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 8, t15, 8, t16, 8);
    t43 = (t0 + 2248);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t44, t45, t48, t51, 2, 1, t52, 32, 1);
    t53 = (t44 + 4);
    t27 = *((unsigned int *)t53);
    t28 = (!(t27));
    t54 = (t45 + 4);
    t30 = *((unsigned int *)t54);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB38;

LAB42:    t33 = *((unsigned int *)t44);
    t34 = *((unsigned int *)t45);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t43, t42, 0, *((unsigned int *)t45), t36);
    goto LAB43;

LAB45:    xsi_set_current_line(58, ng0);

LAB47:    xsi_set_current_line(59, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    t18 = (t0 + 2248);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t15, 8, t17, t20, t23, 2, 1, t24, 32, 1);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    t25 = (t0 + 1168U);
    t29 = (t25 + 72U);
    t38 = *((char **)t29);
    t39 = (t0 + 2888);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    xsi_vlog_generic_get_index_select_value(t16, 8, t26, t38, 2, t41, 32, 1);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 8, t15, 8, t16, 8);
    t43 = (t0 + 2248);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t44, t45, t48, t51, 2, 1, t52, 32, 1);
    t53 = (t44 + 4);
    t27 = *((unsigned int *)t53);
    t28 = (!(t27));
    t54 = (t45 + 4);
    t30 = *((unsigned int *)t54);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB48;

LAB49:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB44;

LAB48:    t33 = *((unsigned int *)t44);
    t34 = *((unsigned int *)t45);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t43, t42, 0, *((unsigned int *)t45), t36);
    goto LAB49;

LAB51:    xsi_set_current_line(62, ng0);

LAB53:    xsi_set_current_line(63, ng0);
    xsi_set_current_line(63, ng0);
    t13 = ((char*)((ng2)));
    t14 = (t0 + 3048);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 32);

LAB54:    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t7 = (t0 + 2888);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t5, 32, t14, 32);
    memset(t15, 0, 8);
    xsi_vlog_signed_less(t15, 32, t4, 32, t6, 32);
    t17 = (t15 + 4);
    t8 = *((unsigned int *)t17);
    t9 = (~(t8));
    t10 = *((unsigned int *)t15);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB50;

LAB55:    xsi_set_current_line(63, ng0);

LAB57:    xsi_set_current_line(64, ng0);
    t18 = (t0 + 2248);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2248);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t29 = (t0 + 3048);
    t38 = (t29 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_generic_get_array_select_value(t16, 8, t20, t23, t26, 2, 1, t39, 32, 1);
    t40 = (t0 + 2248);
    t41 = (t40 + 56U);
    t43 = *((char **)t41);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = (t0 + 3048);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = ((char*)((ng4)));
    memset(t44, 0, 8);
    xsi_vlog_signed_add(t44, 32, t54, 32, t55, 32);
    xsi_vlog_generic_get_array_select_value(t42, 8, t43, t48, t51, 2, 1, t44, 32, 1);
    memset(t45, 0, 8);
    t56 = (t16 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB59;

LAB58:    t57 = (t42 + 4);
    if (*((unsigned int *)t57) != 0)
        goto LAB59;

LAB62:    if (*((unsigned int *)t16) > *((unsigned int *)t42))
        goto LAB60;

LAB61:    t59 = (t45 + 4);
    t27 = *((unsigned int *)t59);
    t30 = (~(t27));
    t33 = *((unsigned int *)t45);
    t34 = (t33 & t30);
    t37 = (t34 != 0);
    if (t37 > 0)
        goto LAB63;

LAB64:
LAB65:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB54;

LAB59:    t58 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB61;

LAB60:    *((unsigned int *)t45) = 1;
    goto LAB61;

LAB63:    xsi_set_current_line(64, ng0);

LAB66:    xsi_set_current_line(65, ng0);
    t60 = (t0 + 2408);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    t64 = (t0 + 2408);
    t65 = (t64 + 72U);
    t66 = *((char **)t65);
    t67 = (t0 + 2408);
    t68 = (t67 + 64U);
    t69 = *((char **)t68);
    t70 = (t0 + 3048);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    xsi_vlog_generic_get_array_select_value(t63, 8, t62, t66, t69, 2, 1, t72, 32, 1);
    t73 = (t0 + 2568);
    xsi_vlogvar_assign_value(t73, t63, 0, 0, 8);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    t7 = (t5 + 72U);
    t13 = *((char **)t7);
    t14 = (t0 + 2408);
    t17 = (t14 + 64U);
    t18 = *((char **)t17);
    t19 = (t0 + 3048);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t21, 32, t22, 32);
    xsi_vlog_generic_get_array_select_value(t6, 8, t4, t13, t18, 2, 1, t15, 32, 1);
    t23 = (t0 + 2408);
    t24 = (t0 + 2408);
    t25 = (t24 + 72U);
    t26 = *((char **)t25);
    t29 = (t0 + 2408);
    t38 = (t29 + 64U);
    t39 = *((char **)t38);
    t40 = (t0 + 3048);
    t41 = (t40 + 56U);
    t43 = *((char **)t41);
    xsi_vlog_generic_convert_array_indices(t16, t42, t26, t39, 2, 1, t43, 32, 1);
    t46 = (t16 + 4);
    t8 = *((unsigned int *)t46);
    t28 = (!(t8));
    t47 = (t42 + 4);
    t9 = *((unsigned int *)t47);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB67;

LAB68:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    t7 = (t0 + 2408);
    t13 = (t7 + 72U);
    t14 = *((char **)t13);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 3048);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng4)));
    memset(t16, 0, 8);
    xsi_vlog_signed_add(t16, 32, t22, 32, t23, 32);
    xsi_vlog_generic_convert_array_indices(t6, t15, t14, t19, 2, 1, t16, 32, 1);
    t24 = (t6 + 4);
    t8 = *((unsigned int *)t24);
    t28 = (!(t8));
    t25 = (t15 + 4);
    t9 = *((unsigned int *)t25);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB69;

LAB70:    goto LAB65;

LAB67:    t10 = *((unsigned int *)t16);
    t11 = *((unsigned int *)t42);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t23, t6, 0, *((unsigned int *)t42), t36);
    goto LAB68;

LAB69:    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t15), t36);
    goto LAB70;

}

static void Cont_73_1(char *t0)
{
    char t3[8];
    char t6[8];
    char t17[8];
    char t28[8];
    char t39[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2408);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 2408);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t6, 8, t5, t9, t12, 2, 1, t13, 32, 1);
    t14 = (t0 + 2408);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t18 = (t0 + 2408);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2408);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t17, 8, t16, t20, t23, 2, 1, t24, 32, 1);
    t25 = (t0 + 2408);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t29 = (t0 + 2408);
    t30 = (t29 + 72U);
    t31 = *((char **)t30);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t28, 8, t27, t31, t34, 2, 1, t35, 32, 1);
    t36 = (t0 + 2408);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t40 = (t0 + 2408);
    t41 = (t40 + 72U);
    t42 = *((char **)t41);
    t43 = (t0 + 2408);
    t44 = (t43 + 64U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t39, 8, t38, t42, t45, 2, 1, t46, 32, 1);
    xsi_vlogtype_concat(t3, 32, 32, 4U, t39, 8, t28, 8, t17, 8, t6, 8);
    t47 = (t0 + 4896);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memcpy(t51, t3, 8);
    xsi_driver_vfirst_trans(t47, 0, 31);
    t52 = (t0 + 4800);
    *((int *)t52) = 1;

LAB1:    return;
}

static void Always_74_2(char *t0)
{
    char t10[8];
    char t40[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4816);
    *((int *)t2) = 1;
    t3 = (t0 + 4496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(77, ng0);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 1368U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB24;

LAB25:
LAB26:    t39 = (t0 + 2088);
    xsi_vlogvar_assign_value(t39, t10, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = *((unsigned int *)t9);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB27;

LAB28:
LAB29:    t39 = (t0 + 2088);
    xsi_vlogvar_assign_value(t39, t10, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1368U);
    t7 = *((char **)t4);
    memset(t40, 0, 8);
    t4 = (t40 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t40) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t15 & 65535U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 65535U);
    xsi_vlogtype_concat(t10, 32, 32, 2U, t40, 16, t3, 16);
    t9 = (t0 + 2088);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t41, 0, 8);
    xsi_vlog_signed_less(t41, 32, t4, 32, t7, 32);
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t41, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB31;

LAB30:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB32;

LAB33:    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t10, 0, 0, 32);
    goto LAB23;

LAB21:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB23;

LAB24:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t33);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t34);
    t37 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t37 & t33);
    t38 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t38 & t34);
    goto LAB26;

LAB27:    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t33 & t29);
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t30);
    goto LAB29;

LAB31:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB33;

LAB32:    *((unsigned int *)t10) = 1;
    goto LAB33;

}


extern void work_m_00000000001483111511_0886308060_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Cont_73_1,(void *)Always_74_2};
	xsi_register_didat("work_m_00000000001483111511_0886308060", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001483111511_0886308060.didat");
	xsi_register_executes(pe);
}
