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
static const char *ng0 = "D:/Desktop/CO/exercise/P6/CPU_lwer/HAZARD_M.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {0U, 31U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {37U, 0U};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 2, 0LL);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t4[8];
    char t5[8];
    char t8[8];
    char t10[8];
    char t27[8];
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
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3736);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
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
    xsi_set_current_line(38, ng0);
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

LAB27:    memset(t5, 0, 8);
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

LAB31:    t20 = (t5 + 4);
    t45 = *((unsigned int *)t5);
    t46 = *((unsigned int *)t20);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB32;

LAB33:    t48 = *((unsigned int *)t5);
    t49 = (~(t48));
    t50 = *((unsigned int *)t20);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t20) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t5) > 0)
        goto LAB38;

LAB39:    memcpy(t4, t26, 8);

LAB40:    t21 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t21, t4, 0, 0, 5, 0LL);
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

LAB28:    *((unsigned int *)t5) = 1;
    goto LAB31;

LAB30:    t14 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB31;

LAB32:    t21 = (t0 + 1688U);
    t25 = *((char **)t21);
    goto LAB33;

LAB34:    t21 = (t0 + 1368U);
    t26 = *((char **)t21);
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t4, 5, t25, 5, t26, 5);
    goto LAB40;

LAB38:    memcpy(t4, t25, 8);
    goto LAB40;

}


extern void work_m_00000000003263738363_0549353675_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_36_1};
	xsi_register_didat("work_m_00000000003263738363_0549353675", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000003263738363_0549353675.didat");
	xsi_register_executes(pe);
}
