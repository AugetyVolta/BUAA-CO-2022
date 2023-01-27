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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Desktop/CO/exercise/P1/sell/drink.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static int ng5[] = {1, 0};
static int ng6[] = {0, 0};



static void Always_32_0(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 2396U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3024);
    *((int *)t2) = 1;
    t3 = (t0 + 2424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1596);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t9 = (t0 + 1184U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t12 = (t10 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB21;

LAB18:    if (t23 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t11) = 1;

LAB21:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB29;

LAB26:    if (t23 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t11) = 1;

LAB29:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB37;

LAB34:    if (t23 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t11) = 1;

LAB37:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB45;

LAB42:    if (t23 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t11) = 1;

LAB45:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB46;

LAB47:
LAB48:
LAB40:
LAB32:
LAB24:    goto LAB17;

LAB9:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB53;

LAB50:    if (t23 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t11) = 1;

LAB53:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB61;

LAB58:    if (t23 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t11) = 1;

LAB61:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB69;

LAB66:    if (t23 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t11) = 1;

LAB69:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB77;

LAB74:    if (t23 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t11) = 1;

LAB77:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB78;

LAB79:
LAB80:
LAB72:
LAB64:
LAB56:    goto LAB17;

LAB11:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB85;

LAB82:    if (t23 != 0)
        goto LAB84;

LAB83:    *((unsigned int *)t11) = 1;

LAB85:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB93;

LAB90:    if (t23 != 0)
        goto LAB92;

LAB91:    *((unsigned int *)t11) = 1;

LAB93:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB94;

LAB95:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB101;

LAB98:    if (t23 != 0)
        goto LAB100;

LAB99:    *((unsigned int *)t11) = 1;

LAB101:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB102;

LAB103:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB109;

LAB106:    if (t23 != 0)
        goto LAB108;

LAB107:    *((unsigned int *)t11) = 1;

LAB109:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB110;

LAB111:
LAB112:
LAB104:
LAB96:
LAB88:    goto LAB17;

LAB13:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB117;

LAB114:    if (t23 != 0)
        goto LAB116;

LAB115:    *((unsigned int *)t11) = 1;

LAB117:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB118;

LAB119:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB125;

LAB122:    if (t23 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t11) = 1;

LAB125:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB133;

LAB130:    if (t23 != 0)
        goto LAB132;

LAB131:    *((unsigned int *)t11) = 1;

LAB133:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB134;

LAB135:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t2);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB141;

LAB138:    if (t23 != 0)
        goto LAB140;

LAB139:    *((unsigned int *)t11) = 1;

LAB141:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB142;

LAB143:
LAB144:
LAB136:
LAB128:
LAB120:    goto LAB17;

LAB20:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(35, ng0);

LAB25:    xsi_set_current_line(36, ng0);
    t33 = ((char*)((ng1)));
    t34 = (t0 + 1688);
    xsi_vlogvar_assign_value(t34, t33, 0, 0, 3);
    goto LAB24;

LAB28:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(38, ng0);

LAB33:    xsi_set_current_line(39, ng0);
    t10 = ((char*)((ng2)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB32;

LAB36:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(41, ng0);

LAB41:    xsi_set_current_line(42, ng0);
    t10 = ((char*)((ng3)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB40;

LAB44:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(44, ng0);

LAB49:    xsi_set_current_line(45, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB48;

LAB52:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(48, ng0);

LAB57:    xsi_set_current_line(49, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 1688);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB56;

LAB60:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(51, ng0);

LAB65:    xsi_set_current_line(52, ng0);
    t10 = ((char*)((ng3)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB64;

LAB68:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(54, ng0);

LAB73:    xsi_set_current_line(55, ng0);
    t10 = ((char*)((ng4)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB72;

LAB76:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB77;

LAB78:    xsi_set_current_line(57, ng0);

LAB81:    xsi_set_current_line(58, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB80;

LAB84:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(61, ng0);

LAB89:    xsi_set_current_line(62, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 1688);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB88;

LAB92:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB93;

LAB94:    xsi_set_current_line(64, ng0);

LAB97:    xsi_set_current_line(65, ng0);
    t10 = ((char*)((ng4)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB96;

LAB100:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB101;

LAB102:    xsi_set_current_line(67, ng0);

LAB105:    xsi_set_current_line(68, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB104;

LAB108:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB109;

LAB110:    xsi_set_current_line(70, ng0);

LAB113:    xsi_set_current_line(71, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB112;

LAB116:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB117;

LAB118:    xsi_set_current_line(74, ng0);

LAB121:    xsi_set_current_line(75, ng0);
    t12 = ((char*)((ng4)));
    t13 = (t0 + 1688);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB120;

LAB124:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(77, ng0);

LAB129:    xsi_set_current_line(78, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB128;

LAB132:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB133;

LAB134:    xsi_set_current_line(80, ng0);

LAB137:    xsi_set_current_line(81, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB136;

LAB140:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB141;

LAB142:    xsi_set_current_line(83, ng0);

LAB145:    xsi_set_current_line(84, ng0);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1688);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB144;

}

static void Always_89_1(char *t0)
{
    char t6[8];
    char t36[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t1 = (t0 + 2540U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3032);
    *((int *)t2) = 1;
    t3 = (t0 + 2568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng0);

LAB5:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1092U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(93, ng0);

LAB14:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(104, ng0);

LAB35:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1688);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB39;

LAB36:    if (t18 != 0)
        goto LAB38;

LAB37:    *((unsigned int *)t6) = 1;

LAB39:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(129, ng0);

LAB78:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1780);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB42:
LAB21:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 1688);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1596);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(90, ng0);

LAB13:    xsi_set_current_line(91, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1596);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB12;

LAB17:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(94, ng0);

LAB22:    xsi_set_current_line(95, ng0);
    t21 = (t0 + 1596);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);

LAB23:    t29 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t29, 3);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 3, t2, 3);
    if (t30 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB34:    goto LAB21;

LAB24:    xsi_set_current_line(96, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 1872);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 2);
    goto LAB34;

LAB26:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1872);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB34;

LAB28:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1872);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB34;

LAB30:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1872);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    goto LAB34;

LAB38:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(105, ng0);

LAB43:    xsi_set_current_line(106, ng0);
    t29 = (t0 + 1596);
    t31 = (t29 + 36U);
    t32 = *((char **)t31);

LAB44:    t33 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 3, t33, 3);
    if (t30 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 3, t2, 3);
    if (t30 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 3, t2, 3);
    if (t30 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 3, t2, 3);
    if (t30 == 1)
        goto LAB51;

LAB52:
LAB54:
LAB53:    xsi_set_current_line(123, ng0);

LAB77:    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1780);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB55:    goto LAB42;

LAB45:    xsi_set_current_line(107, ng0);

LAB56:    xsi_set_current_line(108, ng0);
    t34 = ((char*)((ng6)));
    t35 = (t0 + 1780);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 1);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB55;

LAB47:    xsi_set_current_line(111, ng0);

LAB57:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB55;

LAB49:    xsi_set_current_line(115, ng0);

LAB58:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB55;

LAB51:    xsi_set_current_line(119, ng0);

LAB59:    xsi_set_current_line(120, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t37, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB63;

LAB60:    if (t18 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t37) = 1;

LAB63:    memset(t36, 0, 8);
    t8 = (t37 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t37);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t8) != 0)
        goto LAB66;

LAB67:    t22 = (t36 + 4);
    t38 = *((unsigned int *)t36);
    t39 = *((unsigned int *)t22);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB68;

LAB69:    t41 = *((unsigned int *)t36);
    t42 = (~(t41));
    t43 = *((unsigned int *)t22);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t22) > 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t36) > 0)
        goto LAB74;

LAB75:    memcpy(t6, t31, 8);

LAB76:    t33 = (t0 + 1872);
    xsi_vlogvar_assign_value(t33, t6, 0, 0, 2);
    goto LAB55;

LAB62:    t7 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB63;

LAB64:    *((unsigned int *)t36) = 1;
    goto LAB67;

LAB66:    t21 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB67;

LAB68:    t29 = ((char*)((ng1)));
    goto LAB69;

LAB70:    t31 = ((char*)((ng2)));
    goto LAB71;

LAB72:    xsi_vlog_unsigned_bit_combine(t6, 2, t29, 2, t31, 2);
    goto LAB76;

LAB74:    memcpy(t6, t29, 8);
    goto LAB76;

}

static void Cont_137_2(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2684U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1780);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3092);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3040);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_138_3(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2828U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1872);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3128);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 3048);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001251569711_0058472636_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Always_89_1,(void *)Cont_137_2,(void *)Cont_138_3};
	xsi_register_didat("work_m_00000000001251569711_0058472636", "isim/tb_isim_beh.exe.sim/work/m_00000000001251569711_0058472636.didat");
	xsi_register_executes(pe);
}
