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
static const char *ng0 = "D:/Desktop/CO/exercise/P7/CPU_hyk/ALU.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};



static void NetDecl_9_0(char *t0)
{
    char t3[16];
    char t6[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    xsi_vlogtype_concat(t3, 33, 33, 2U, t6, 1, t4, 32);
    t14 = (t0 + 4256);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_bit_copy(t18, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t14, 0, 32U);
    t19 = (t0 + 4144);
    *((int *)t19) = 1;

LAB1:    return;
}

static void NetDecl_10_1(char *t0)
{
    char t3[16];
    char t6[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(10, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    xsi_vlogtype_concat(t3, 33, 33, 2U, t6, 1, t4, 32);
    t14 = (t0 + 4320);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    xsi_vlog_bit_copy(t18, 0, t3, 0, 33);
    xsi_driver_vfirst_trans(t14, 0, 32U);
    t19 = (t0 + 4160);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Always_12_2(char *t0)
{
    char t8[8];
    char t9[16];
    char t10[8];
    char t11[8];
    char t23[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
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
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    int t66;
    int t67;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 4176);
    *((int *)t2) = 1;
    t3 = (t0 + 3856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(12, ng0);

LAB5:    xsi_set_current_line(13, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(14, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(40, ng0);

LAB102:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(15, ng0);

LAB24:    xsi_set_current_line(16, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    xsi_vlog_unsigned_add(t9, 33, t4, 33, t5, 33);
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t9, 0, 0, 33);
    xsi_set_current_line(18, ng0);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t11, 0, 8);
    t7 = (t11 + 4);
    t12 = (t5 + 8);
    t13 = (t5 + 12);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t7) = t19;
    t20 = (t0 + 2408);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t24 = (t23 + 4);
    t25 = (t22 + 4);
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 31);
    t28 = (t27 & 1);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 31);
    t31 = (t30 & 1);
    *((unsigned int *)t24) = t31;
    memset(t32, 0, 8);
    t33 = (t11 + 4);
    t34 = (t23 + 4);
    t35 = *((unsigned int *)t11);
    t36 = *((unsigned int *)t23);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB28;

LAB25:    if (t44 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t32) = 1;

LAB28:    memset(t10, 0, 8);
    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 & 1U);
    if (t53 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t48) != 0)
        goto LAB31;

LAB32:    t55 = (t10 + 4);
    t56 = *((unsigned int *)t10);
    t57 = *((unsigned int *)t55);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB33;

LAB34:    t60 = *((unsigned int *)t10);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t55) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t10) > 0)
        goto LAB39;

LAB40:    memcpy(t8, t64, 8);

LAB41:    t65 = (t0 + 2248);
    xsi_vlogvar_assign_value(t65, t8, 0, 0, 1);
    goto LAB23;

LAB9:    xsi_set_current_line(20, ng0);

LAB42:    xsi_set_current_line(21, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    xsi_vlog_unsigned_minus(t9, 33, t4, 33, t5, 33);
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t9, 0, 0, 33);
    xsi_set_current_line(23, ng0);
    t2 = (t0 + 2408);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t11, 0, 8);
    t7 = (t11 + 4);
    t12 = (t5 + 8);
    t13 = (t5 + 12);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t7) = t19;
    t20 = (t0 + 2408);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t24 = (t23 + 4);
    t25 = (t22 + 4);
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 31);
    t28 = (t27 & 1);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 31);
    t31 = (t30 & 1);
    *((unsigned int *)t24) = t31;
    memset(t32, 0, 8);
    t33 = (t11 + 4);
    t34 = (t23 + 4);
    t35 = *((unsigned int *)t11);
    t36 = *((unsigned int *)t23);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB46;

LAB43:    if (t44 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t32) = 1;

LAB46:    memset(t10, 0, 8);
    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 & 1U);
    if (t53 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t48) != 0)
        goto LAB49;

LAB50:    t55 = (t10 + 4);
    t56 = *((unsigned int *)t10);
    t57 = *((unsigned int *)t55);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB51;

LAB52:    t60 = *((unsigned int *)t10);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t55) > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t10) > 0)
        goto LAB57;

LAB58:    memcpy(t8, t64, 8);

LAB59:    t65 = (t0 + 2248);
    xsi_vlogvar_assign_value(t65, t8, 0, 0, 1);
    goto LAB23;

LAB11:    xsi_set_current_line(25, ng0);

LAB60:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t7);
    t16 = (t14 | t15);
    *((unsigned int *)t8) = t16;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    t19 = (t17 | t18);
    *((unsigned int *)t13) = t19;
    t26 = *((unsigned int *)t13);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB61;

LAB62:
LAB63:    t22 = (t0 + 2088);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(28, ng0);

LAB64:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(31, ng0);

LAB65:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t7);
    t16 = (t14 & t15);
    *((unsigned int *)t8) = t16;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    t19 = (t17 | t18);
    *((unsigned int *)t13) = t19;
    t26 = *((unsigned int *)t13);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB66;

LAB67:
LAB68:    t22 = (t0 + 2088);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(34, ng0);

LAB69:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t32, 0, 8);
    xsi_vlog_signed_less(t32, 32, t5, 32, t7, 32);
    memset(t10, 0, 8);
    t4 = (t32 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (~(t14));
    t16 = *((unsigned int *)t32);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t4) != 0)
        goto LAB72;

LAB73:    t13 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t13);
    t27 = (t19 || t26);
    if (t27 > 0)
        goto LAB74;

LAB75:    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t13);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t13) > 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t10) > 0)
        goto LAB80;

LAB81:    memcpy(t8, t21, 8);

LAB82:    t22 = (t0 + 2088);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(37, ng0);

LAB83:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t11, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB85;

LAB84:    t12 = (t7 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB85;

LAB88:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB86;

LAB87:    memset(t10, 0, 8);
    t20 = (t11 + 4);
    t14 = *((unsigned int *)t20);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t20) != 0)
        goto LAB91;

LAB92:    t22 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    t27 = (t19 || t26);
    if (t27 > 0)
        goto LAB93;

LAB94:    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t22);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t22) > 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t10) > 0)
        goto LAB99;

LAB100:    memcpy(t8, t25, 8);

LAB101:    t33 = (t0 + 2088);
    xsi_vlogvar_assign_value(t33, t8, 0, 0, 32);
    goto LAB23;

LAB27:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB28;

LAB29:    *((unsigned int *)t10) = 1;
    goto LAB32;

LAB31:    t54 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB32;

LAB33:    t59 = ((char*)((ng1)));
    goto LAB34;

LAB35:    t64 = ((char*)((ng2)));
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t8, 32, t59, 32, t64, 32);
    goto LAB41;

LAB39:    memcpy(t8, t59, 8);
    goto LAB41;

LAB45:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t10) = 1;
    goto LAB50;

LAB49:    t54 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB50;

LAB51:    t59 = ((char*)((ng1)));
    goto LAB52;

LAB53:    t64 = ((char*)((ng2)));
    goto LAB54;

LAB55:    xsi_vlog_unsigned_bit_combine(t8, 32, t59, 32, t64, 32);
    goto LAB59;

LAB57:    memcpy(t8, t59, 8);
    goto LAB59;

LAB61:    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t28 | t29);
    t20 = (t5 + 4);
    t21 = (t7 + 4);
    t30 = *((unsigned int *)t20);
    t31 = (~(t30));
    t35 = *((unsigned int *)t5);
    t66 = (t35 & t31);
    t36 = *((unsigned int *)t21);
    t37 = (~(t36));
    t38 = *((unsigned int *)t7);
    t67 = (t38 & t37);
    t39 = (~(t66));
    t40 = (~(t67));
    t41 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t41 & t39);
    t42 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t42 & t40);
    goto LAB63;

LAB66:    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t28 | t29);
    t20 = (t5 + 4);
    t21 = (t7 + 4);
    t30 = *((unsigned int *)t5);
    t31 = (~(t30));
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t7);
    t38 = (~(t37));
    t39 = *((unsigned int *)t21);
    t40 = (~(t39));
    t66 = (t31 & t36);
    t67 = (t38 & t40);
    t41 = (~(t66));
    t42 = (~(t67));
    t43 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t43 & t41);
    t44 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t44 & t42);
    t45 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t45 & t41);
    t46 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t46 & t42);
    goto LAB68;

LAB70:    *((unsigned int *)t10) = 1;
    goto LAB73;

LAB72:    t12 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB73;

LAB74:    t20 = ((char*)((ng2)));
    goto LAB75;

LAB76:    t21 = ((char*)((ng1)));
    goto LAB77;

LAB78:    xsi_vlog_unsigned_bit_combine(t8, 32, t20, 32, t21, 32);
    goto LAB82;

LAB80:    memcpy(t8, t20, 8);
    goto LAB82;

LAB85:    t13 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB87;

LAB86:    *((unsigned int *)t11) = 1;
    goto LAB87;

LAB89:    *((unsigned int *)t10) = 1;
    goto LAB92;

LAB91:    t21 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB92;

LAB93:    t24 = ((char*)((ng2)));
    goto LAB94;

LAB95:    t25 = ((char*)((ng1)));
    goto LAB96;

LAB97:    xsi_vlog_unsigned_bit_combine(t8, 32, t24, 32, t25, 32);
    goto LAB101;

LAB99:    memcpy(t8, t24, 8);
    goto LAB101;

}


extern void work_m_00000000001161734177_0886308060_init()
{
	static char *pe[] = {(void *)NetDecl_9_0,(void *)NetDecl_10_1,(void *)Always_12_2};
	xsi_register_didat("work_m_00000000001161734177_0886308060", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001161734177_0886308060.didat");
	xsi_register_executes(pe);
}
