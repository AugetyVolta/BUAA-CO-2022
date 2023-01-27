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
static const char *ng0 = "D:/Desktop/CO/exercise/P7/CPU_hyk/DE.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {24, 0};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {0, 0};
static int ng8[] = {16, 0};



static void Always_9_0(char *t0)
{
    char t9[8];
    char t29[8];
    char t40[8];
    char t41[8];
    char t47[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
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
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(9, ng0);

LAB5:    xsi_set_current_line(10, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(30, ng0);

LAB70:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t7 = *((char **)t4);
    t8 = ((char*)((ng6)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t3, t7, 2, t8, 32, 1);
    t22 = ((char*)((ng7)));
    memset(t29, 0, 8);
    t23 = (t9 + 4);
    t30 = (t22 + 4);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t22);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t23);
    t14 = *((unsigned int *)t30);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t23);
    t18 = *((unsigned int *)t30);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB74;

LAB71:    if (t19 != 0)
        goto LAB73;

LAB72:    *((unsigned int *)t29) = 1;

LAB74:    t32 = (t29 + 4);
    t24 = *((unsigned int *)t32);
    t25 = (~(t24));
    t26 = *((unsigned int *)t29);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB75;

LAB76:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t29, 0, 8);
    t2 = (t29 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 16);
    *((unsigned int *)t29) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 16);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t14 & 65535U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 65535U);
    t7 = ((char*)((ng8)));
    t8 = (t0 + 1208U);
    t22 = *((char **)t8);
    memset(t41, 0, 8);
    t8 = (t41 + 4);
    t23 = (t22 + 4);
    t16 = *((unsigned int *)t22);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t41) = t18;
    t19 = *((unsigned int *)t23);
    t20 = (t19 >> 31);
    t21 = (t20 & 1);
    *((unsigned int *)t8) = t21;
    xsi_vlog_mul_concat(t40, 16, 1, t7, 1U, t41, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t40, 16, t29, 16);
    t30 = (t0 + 1768);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);

LAB77:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(11, ng0);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(12, ng0);

LAB18:    xsi_set_current_line(13, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t9, 0, 8);
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB22;

LAB19:    if (t19 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t9) = 1;

LAB22:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB29;

LAB26:    if (t19 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t9) = 1;

LAB29:    t22 = (t9 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t9, 0, 8);
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB36;

LAB33:    if (t19 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t9) = 1;

LAB36:    t22 = (t9 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 24);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 24);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 255U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 255U);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);

LAB39:
LAB32:
LAB25:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t7, 24, t4, 8);
    t8 = (t0 + 1768);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(19, ng0);

LAB40:    xsi_set_current_line(20, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t9, 0, 8);
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB44;

LAB41:    if (t19 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t9) = 1;

LAB44:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB51;

LAB48:    if (t19 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t9) = 1;

LAB51:    t22 = (t9 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t9, 0, 8);
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB58;

LAB55:    if (t19 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t9) = 1;

LAB58:    t22 = (t9 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 24);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 24);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 255U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 255U);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);

LAB61:
LAB54:
LAB47:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng4)));
    t8 = (t0 + 1928);
    t22 = (t8 + 56U);
    t23 = *((char **)t22);
    memset(t40, 0, 8);
    t30 = (t40 + 4);
    t31 = (t23 + 4);
    t10 = *((unsigned int *)t23);
    t11 = (t10 >> 7);
    t12 = (t11 & 1);
    *((unsigned int *)t40) = t12;
    t13 = *((unsigned int *)t31);
    t14 = (t13 >> 7);
    t15 = (t14 & 1);
    *((unsigned int *)t30) = t15;
    xsi_vlog_mul_concat(t29, 24, 1, t7, 1U, t40, 1);
    xsi_vlogtype_concat(t9, 32, 32, 2U, t29, 24, t4, 8);
    t32 = (t0 + 1768);
    xsi_vlogvar_assign_value(t32, t9, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(26, ng0);

LAB62:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1008U);
    t7 = (t3 + 72U);
    t8 = *((char **)t7);
    t22 = ((char*)((ng6)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t4, t8, 2, t22, 32, 1);
    t23 = ((char*)((ng7)));
    memset(t29, 0, 8);
    t30 = (t9 + 4);
    t31 = (t23 + 4);
    t10 = *((unsigned int *)t9);
    t11 = *((unsigned int *)t23);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t30);
    t14 = *((unsigned int *)t31);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t30);
    t18 = *((unsigned int *)t31);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB66;

LAB63:    if (t19 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t29) = 1;

LAB66:    t39 = (t29 + 4);
    t24 = *((unsigned int *)t39);
    t25 = (~(t24));
    t26 = *((unsigned int *)t29);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB67;

LAB68:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t29, 0, 8);
    t2 = (t29 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 16);
    *((unsigned int *)t29) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 16);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t14 & 65535U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 65535U);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t9, 32, 32, 2U, t7, 16, t29, 16);
    t8 = (t0 + 1768);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);

LAB69:    goto LAB17;

LAB21:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(13, ng0);
    t30 = (t0 + 1208U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t29 + 4);
    t32 = (t31 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 0);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 0);
    *((unsigned int *)t30) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 255U);
    t39 = (t0 + 1928);
    xsi_vlogvar_assign_value(t39, t29, 0, 0, 8);
    goto LAB25;

LAB28:    t8 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(14, ng0);
    t23 = (t0 + 1208U);
    t30 = *((char **)t23);
    memset(t29, 0, 8);
    t23 = (t29 + 4);
    t31 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 8);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 8);
    *((unsigned int *)t23) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t38 & 255U);
    t32 = (t0 + 1928);
    xsi_vlogvar_assign_value(t32, t29, 0, 0, 8);
    goto LAB32;

LAB35:    t8 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(15, ng0);
    t23 = (t0 + 1208U);
    t30 = *((char **)t23);
    memset(t29, 0, 8);
    t23 = (t29 + 4);
    t31 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 16);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 16);
    *((unsigned int *)t23) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t38 & 255U);
    t32 = (t0 + 1928);
    xsi_vlogvar_assign_value(t32, t29, 0, 0, 8);
    goto LAB39;

LAB43:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(20, ng0);
    t30 = (t0 + 1208U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t29 + 4);
    t32 = (t31 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (t33 >> 0);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t32);
    t36 = (t35 >> 0);
    *((unsigned int *)t30) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 255U);
    t39 = (t0 + 1928);
    xsi_vlogvar_assign_value(t39, t29, 0, 0, 8);
    goto LAB47;

LAB50:    t8 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(21, ng0);
    t23 = (t0 + 1208U);
    t30 = *((char **)t23);
    memset(t29, 0, 8);
    t23 = (t29 + 4);
    t31 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 8);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 8);
    *((unsigned int *)t23) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t38 & 255U);
    t32 = (t0 + 1928);
    xsi_vlogvar_assign_value(t32, t29, 0, 0, 8);
    goto LAB54;

LAB57:    t8 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB58;

LAB59:    xsi_set_current_line(22, ng0);
    t23 = (t0 + 1208U);
    t30 = *((char **)t23);
    memset(t29, 0, 8);
    t23 = (t29 + 4);
    t31 = (t30 + 4);
    t33 = *((unsigned int *)t30);
    t34 = (t33 >> 16);
    *((unsigned int *)t29) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 16);
    *((unsigned int *)t23) = t36;
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t38 & 255U);
    t32 = (t0 + 1928);
    xsi_vlogvar_assign_value(t32, t29, 0, 0, 8);
    goto LAB61;

LAB65:    t32 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB66;

LAB67:    xsi_set_current_line(27, ng0);
    t42 = (t0 + 1208U);
    t43 = *((char **)t42);
    memset(t41, 0, 8);
    t42 = (t41 + 4);
    t44 = (t43 + 4);
    t33 = *((unsigned int *)t43);
    t34 = (t33 >> 0);
    *((unsigned int *)t41) = t34;
    t35 = *((unsigned int *)t44);
    t36 = (t35 >> 0);
    *((unsigned int *)t42) = t36;
    t37 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t37 & 65535U);
    t38 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t38 & 65535U);
    t45 = ((char*)((ng1)));
    xsi_vlogtype_concat(t40, 32, 32, 2U, t45, 16, t41, 16);
    t46 = (t0 + 1768);
    xsi_vlogvar_assign_value(t46, t40, 0, 0, 32);
    goto LAB69;

LAB73:    t31 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB74;

LAB75:    xsi_set_current_line(31, ng0);
    t39 = (t0 + 1208U);
    t42 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t41 + 4);
    t43 = (t42 + 4);
    t33 = *((unsigned int *)t42);
    t34 = (t33 >> 0);
    *((unsigned int *)t41) = t34;
    t35 = *((unsigned int *)t43);
    t36 = (t35 >> 0);
    *((unsigned int *)t39) = t36;
    t37 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t37 & 65535U);
    t38 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t38 & 65535U);
    t44 = ((char*)((ng8)));
    t45 = (t0 + 1208U);
    t46 = *((char **)t45);
    memset(t48, 0, 8);
    t45 = (t48 + 4);
    t49 = (t46 + 4);
    t50 = *((unsigned int *)t46);
    t51 = (t50 >> 15);
    t52 = (t51 & 1);
    *((unsigned int *)t48) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 >> 15);
    t55 = (t54 & 1);
    *((unsigned int *)t45) = t55;
    xsi_vlog_mul_concat(t47, 16, 1, t44, 1U, t48, 1);
    xsi_vlogtype_concat(t40, 32, 32, 2U, t47, 16, t41, 16);
    t56 = (t0 + 1768);
    xsi_vlogvar_assign_value(t56, t40, 0, 0, 32);
    goto LAB77;

}


extern void work_m_00000000002818016545_2694143388_init()
{
	static char *pe[] = {(void *)Always_9_0};
	xsi_register_didat("work_m_00000000002818016545_2694143388", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000002818016545_2694143388.didat");
	xsi_register_executes(pe);
}
