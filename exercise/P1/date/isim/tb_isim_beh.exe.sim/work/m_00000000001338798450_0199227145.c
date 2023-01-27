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
static const char *ng0 = "D:/Desktop/CO/exercise/P1/date/datecheck.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {49, 0};
static int ng3[] = {57, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {48, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {7U, 0U};
static int ng8[] = {4, 0};
static int ng9[] = {46, 0};
static unsigned int ng10[] = {3U, 0U};
static int ng11[] = {1, 0};
static int ng12[] = {45, 0};
static int ng13[] = {2, 0};
static int ng14[] = {47, 0};
static int ng15[] = {3, 0};
static unsigned int ng16[] = {4U, 0U};
static unsigned int ng17[] = {6U, 0U};
static int ng18[] = {0, 0};



static void Always_38_0(char *t0)
{
    char t11[8];
    char t15[8];
    char t29[8];
    char t33[8];
    char t41[8];
    char t81[8];
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
    char *t14;
    char *t16;
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
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;

LAB0:    t1 = (t0 + 2544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3028);
    *((int *)t2) = 1;
    t3 = (t0 + 2572);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1744);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1836);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(41, ng0);
    t9 = (t0 + 1332U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t10 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB19;

LAB18:    t13 = (t9 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB19;

LAB22:    if (*((unsigned int *)t10) < *((unsigned int *)t9))
        goto LAB21;

LAB20:    *((unsigned int *)t11) = 1;

LAB21:    memset(t15, 0, 8);
    t16 = (t11 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t16) != 0)
        goto LAB25;

LAB26:    t23 = (t15 + 4);
    t24 = *((unsigned int *)t15);
    t25 = *((unsigned int *)t23);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB27;

LAB28:    memcpy(t41, t15, 8);

LAB29:    t73 = (t41 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB49;

LAB46:    if (t36 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t11) = 1;

LAB49:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1836);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB52:
LAB44:    goto LAB17;

LAB9:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1332U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB55;

LAB54:    t7 = (t3 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t4) < *((unsigned int *)t3))
        goto LAB57;

LAB56:    *((unsigned int *)t11) = 1;

LAB57:    memset(t15, 0, 8);
    t10 = (t11 + 4);
    t17 = *((unsigned int *)t10);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t10) != 0)
        goto LAB61;

LAB62:    t13 = (t15 + 4);
    t24 = *((unsigned int *)t15);
    t25 = *((unsigned int *)t13);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB63;

LAB64:    memcpy(t41, t15, 8);

LAB65:    t46 = (t41 + 4);
    t74 = *((unsigned int *)t46);
    t75 = (~(t74));
    t76 = *((unsigned int *)t41);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB78;

LAB79:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB90;

LAB87:    if (t36 != 0)
        goto LAB89;

LAB88:    *((unsigned int *)t11) = 1;

LAB90:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng12)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB98;

LAB95:    if (t36 != 0)
        goto LAB97;

LAB96:    *((unsigned int *)t11) = 1;

LAB98:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB99;

LAB100:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB106;

LAB103:    if (t36 != 0)
        goto LAB105;

LAB104:    *((unsigned int *)t11) = 1;

LAB106:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB107;

LAB108:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1836);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB109:
LAB101:
LAB93:
LAB80:    goto LAB17;

LAB11:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1332U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t3);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t7);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t5);
    t35 = *((unsigned int *)t7);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB114;

LAB111:    if (t36 != 0)
        goto LAB113;

LAB112:    *((unsigned int *)t11) = 1;

LAB114:    t10 = (t11 + 4);
    t39 = *((unsigned int *)t10);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB115;

LAB116:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng12)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB122;

LAB119:    if (t36 != 0)
        goto LAB121;

LAB120:    *((unsigned int *)t11) = 1;

LAB122:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB123;

LAB124:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng14)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t2);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t5);
    t24 = (t20 ^ t21);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t4);
    t35 = *((unsigned int *)t5);
    t36 = (t26 | t35);
    t37 = (~(t36));
    t38 = (t25 & t37);
    if (t38 != 0)
        goto LAB130;

LAB127:    if (t36 != 0)
        goto LAB129;

LAB128:    *((unsigned int *)t11) = 1;

LAB130:    t9 = (t11 + 4);
    t39 = *((unsigned int *)t9);
    t42 = (~(t39));
    t43 = *((unsigned int *)t11);
    t44 = (t43 & t42);
    t48 = (t44 != 0);
    if (t48 > 0)
        goto LAB131;

LAB132:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1836);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB133:
LAB125:
LAB117:    goto LAB17;

LAB13:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB17;

LAB19:    t14 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB21;

LAB23:    *((unsigned int *)t15) = 1;
    goto LAB26;

LAB25:    t22 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB26;

LAB27:    t27 = (t0 + 1332U);
    t28 = *((char **)t27);
    t27 = ((char*)((ng3)));
    memset(t29, 0, 8);
    t30 = (t28 + 4);
    if (*((unsigned int *)t30) != 0)
        goto LAB31;

LAB30:    t31 = (t27 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t28) > *((unsigned int *)t27))
        goto LAB33;

LAB32:    *((unsigned int *)t29) = 1;

LAB33:    memset(t33, 0, 8);
    t34 = (t29 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t34) != 0)
        goto LAB37;

LAB38:    t42 = *((unsigned int *)t15);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t45 = (t15 + 4);
    t46 = (t33 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t45);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB29;

LAB31:    t32 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB33;

LAB35:    *((unsigned int *)t33) = 1;
    goto LAB38;

LAB37:    t40 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB38;

LAB39:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t41) = (t53 | t54);
    t55 = (t15 + 4);
    t56 = (t33 + 4);
    t57 = *((unsigned int *)t15);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB41;

LAB42:    xsi_set_current_line(41, ng0);

LAB45:    xsi_set_current_line(42, ng0);
    t79 = ((char*)((ng4)));
    t80 = (t0 + 1836);
    xsi_vlogvar_assign_value(t80, t79, 0, 0, 3);
    goto LAB44;

LAB48:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(44, ng0);

LAB53:    xsi_set_current_line(45, ng0);
    t10 = ((char*)((ng6)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB52;

LAB55:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB57;

LAB59:    *((unsigned int *)t15) = 1;
    goto LAB62;

LAB61:    t12 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB62;

LAB63:    t14 = (t0 + 1332U);
    t16 = *((char **)t14);
    t14 = ((char*)((ng3)));
    memset(t29, 0, 8);
    t22 = (t16 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB67;

LAB66:    t23 = (t14 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB67;

LAB70:    if (*((unsigned int *)t16) > *((unsigned int *)t14))
        goto LAB69;

LAB68:    *((unsigned int *)t29) = 1;

LAB69:    memset(t33, 0, 8);
    t28 = (t29 + 4);
    t35 = *((unsigned int *)t28);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t28) != 0)
        goto LAB73;

LAB74:    t42 = *((unsigned int *)t15);
    t43 = *((unsigned int *)t33);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t31 = (t15 + 4);
    t32 = (t33 + 4);
    t34 = (t41 + 4);
    t48 = *((unsigned int *)t31);
    t49 = *((unsigned int *)t32);
    t50 = (t48 | t49);
    *((unsigned int *)t34) = t50;
    t51 = *((unsigned int *)t34);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB75;

LAB76:
LAB77:    goto LAB65;

LAB67:    t27 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB69;

LAB71:    *((unsigned int *)t33) = 1;
    goto LAB74;

LAB73:    t30 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB74;

LAB75:    t53 = *((unsigned int *)t41);
    t54 = *((unsigned int *)t34);
    *((unsigned int *)t41) = (t53 | t54);
    t40 = (t15 + 4);
    t45 = (t33 + 4);
    t57 = *((unsigned int *)t15);
    t58 = (~(t57));
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t33);
    t62 = (~(t61));
    t63 = *((unsigned int *)t45);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t69 & t67);
    t70 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t70 & t68);
    t71 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t71 & t67);
    t72 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t72 & t68);
    goto LAB77;

LAB78:    xsi_set_current_line(50, ng0);

LAB81:    xsi_set_current_line(51, ng0);
    t47 = (t0 + 1928);
    t55 = (t47 + 36U);
    t56 = *((char **)t55);
    t73 = ((char*)((ng8)));
    memset(t81, 0, 8);
    xsi_vlog_signed_less(t81, 32, t56, 32, t73, 32);
    t79 = (t81 + 4);
    t82 = *((unsigned int *)t79);
    t83 = (~(t82));
    t84 = *((unsigned int *)t81);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB82;

LAB83:    xsi_set_current_line(54, ng0);

LAB86:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1836);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB84:    goto LAB80;

LAB82:    xsi_set_current_line(51, ng0);

LAB85:    xsi_set_current_line(52, ng0);
    t80 = ((char*)((ng4)));
    t87 = (t0 + 1836);
    xsi_vlogvar_assign_value(t87, t80, 0, 0, 3);
    goto LAB84;

LAB89:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB90;

LAB91:    xsi_set_current_line(58, ng0);

LAB94:    xsi_set_current_line(59, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB93;

LAB97:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB98;

LAB99:    xsi_set_current_line(62, ng0);

LAB102:    xsi_set_current_line(63, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB101;

LAB105:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB106;

LAB107:    xsi_set_current_line(66, ng0);

LAB110:    xsi_set_current_line(67, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB109;

LAB113:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB114;

LAB115:    xsi_set_current_line(73, ng0);

LAB118:    xsi_set_current_line(74, ng0);
    t12 = ((char*)((ng10)));
    t13 = (t0 + 1836);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB117;

LAB121:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB122;

LAB123:    xsi_set_current_line(77, ng0);

LAB126:    xsi_set_current_line(78, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB125;

LAB129:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB130;

LAB131:    xsi_set_current_line(81, ng0);

LAB134:    xsi_set_current_line(82, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t0 + 1836);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 2020);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB133;

}

static void Always_97_1(char *t0)
{
    char t6[8];
    char t32[8];
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
    char *t30;
    char *t31;
    char *t33;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3036);
    *((int *)t2) = 1;
    t3 = (t0 + 2716);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);

LAB5:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 1424U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng11)));
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

LAB11:    xsi_set_current_line(101, ng0);

LAB14:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1836);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1744);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1836);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
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
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1836);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng16)));
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
        goto LAB26;

LAB23:    if (t18 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t6) = 1;

LAB26:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1836);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng17)));
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB37:
LAB29:
LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(98, ng0);

LAB13:    xsi_set_current_line(99, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1744);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB12;

LAB17:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(103, ng0);

LAB22:    xsi_set_current_line(104, ng0);
    t28 = (t0 + 1928);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng11)));
    memset(t32, 0, 8);
    xsi_vlog_signed_add(t32, 32, t30, 32, t31, 32);
    t33 = (t0 + 1928);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 32);
    goto LAB21;

LAB25:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(106, ng0);

LAB30:    xsi_set_current_line(107, ng0);
    t28 = (t0 + 1928);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng11)));
    memset(t32, 0, 8);
    xsi_vlog_signed_add(t32, 32, t30, 32, t31, 32);
    t33 = (t0 + 1928);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 32);
    goto LAB29;

LAB33:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(109, ng0);

LAB38:    xsi_set_current_line(110, ng0);
    t28 = (t0 + 1928);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng11)));
    memset(t32, 0, 8);
    xsi_vlog_signed_add(t32, 32, t30, 32, t31, 32);
    t33 = (t0 + 1928);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 32);
    goto LAB37;

}

static void Cont_116_2(char *t0)
{
    char t6[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1744);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
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
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    t22 = (t0 + 3088);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 3044);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}


extern void work_m_00000000001338798450_0199227145_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Always_97_1,(void *)Cont_116_2};
	xsi_register_didat("work_m_00000000001338798450_0199227145", "isim/tb_isim_beh.exe.sim/work/m_00000000001338798450_0199227145.didat");
	xsi_register_executes(pe);
}
