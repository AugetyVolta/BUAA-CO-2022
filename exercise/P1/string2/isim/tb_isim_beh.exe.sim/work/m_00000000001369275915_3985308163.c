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
static const char *ng0 = "D:/Desktop/CO/exercise/P1/string2/string2.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {40, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {48, 0};
static int ng5[] = {57, 0};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {2U, 0U};
static int ng9[] = {41, 0};
static int ng10[] = {42, 0};
static int ng11[] = {43, 0};
static unsigned int ng12[] = {3U, 0U};
static unsigned int ng13[] = {4U, 0U};
static int ng14[] = {1, 0};



static void Always_35_0(char *t0)
{
    char t11[8];
    char t35[8];
    char t36[8];
    char t37[8];
    char t40[8];
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
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
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
    char *t73;
    char *t74;
    int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
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
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;

LAB0:    t1 = (t0 + 2280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2764);
    *((int *)t2) = 1;
    t3 = (t0 + 2308);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1664);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);
    t9 = (t0 + 1344U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng2)));
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
        goto LAB27;

LAB24:    if (t23 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t11) = 1;

LAB27:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB33;

LAB32:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB35;

LAB34:    *((unsigned int *)t11) = 1;

LAB35:    memset(t35, 0, 8);
    t9 = (t11 + 4);
    t14 = *((unsigned int *)t9);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t9) != 0)
        goto LAB39;

LAB40:    t12 = (t35 + 4);
    t19 = *((unsigned int *)t35);
    t20 = *((unsigned int *)t12);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB41;

LAB42:    memcpy(t40, t35, 8);

LAB43:    t67 = (t40 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t40);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB58:
LAB30:    goto LAB23;

LAB9:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB61;

LAB60:    t7 = (t3 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB61;

LAB64:    if (*((unsigned int *)t4) < *((unsigned int *)t3))
        goto LAB63;

LAB62:    *((unsigned int *)t11) = 1;

LAB63:    memset(t35, 0, 8);
    t10 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t10) != 0)
        goto LAB67;

LAB68:    t13 = (t35 + 4);
    t19 = *((unsigned int *)t35);
    t20 = *((unsigned int *)t13);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB69;

LAB70:    memcpy(t40, t35, 8);

LAB71:    t73 = (t40 + 4);
    t68 = *((unsigned int *)t73);
    t69 = (~(t68));
    t70 = *((unsigned int *)t40);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB84;

LAB85:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB86:    goto LAB23;

LAB11:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
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
        goto LAB91;

LAB88:    if (t23 != 0)
        goto LAB90;

LAB89:    *((unsigned int *)t11) = 1;

LAB91:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB92;

LAB93:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
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
        goto LAB98;

LAB95:    if (t23 != 0)
        goto LAB97;

LAB96:    *((unsigned int *)t11) = 1;

LAB98:    memset(t35, 0, 8);
    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t9) != 0)
        goto LAB101;

LAB102:    t12 = (t35 + 4);
    t44 = *((unsigned int *)t35);
    t45 = (!(t44));
    t46 = *((unsigned int *)t12);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB103;

LAB104:    memcpy(t40, t35, 8);

LAB105:    t67 = (t40 + 4);
    t93 = *((unsigned int *)t67);
    t94 = (~(t93));
    t95 = *((unsigned int *)t40);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB117;

LAB118:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB119:
LAB94:    goto LAB23;

LAB13:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB121;

LAB120:    t7 = (t3 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB121;

LAB124:    if (*((unsigned int *)t4) < *((unsigned int *)t3))
        goto LAB123;

LAB122:    *((unsigned int *)t11) = 1;

LAB123:    memset(t35, 0, 8);
    t10 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB125;

LAB126:    if (*((unsigned int *)t10) != 0)
        goto LAB127;

LAB128:    t13 = (t35 + 4);
    t19 = *((unsigned int *)t35);
    t20 = *((unsigned int *)t13);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB129;

LAB130:    memcpy(t40, t35, 8);

LAB131:    t73 = (t40 + 4);
    t68 = *((unsigned int *)t73);
    t69 = (~(t68));
    t70 = *((unsigned int *)t40);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB144;

LAB145:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB146:    goto LAB23;

LAB15:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB148;

LAB147:    t7 = (t3 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB148;

LAB151:    if (*((unsigned int *)t4) < *((unsigned int *)t3))
        goto LAB150;

LAB149:    *((unsigned int *)t11) = 1;

LAB150:    memset(t35, 0, 8);
    t10 = (t11 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB152;

LAB153:    if (*((unsigned int *)t10) != 0)
        goto LAB154;

LAB155:    t13 = (t35 + 4);
    t19 = *((unsigned int *)t35);
    t20 = *((unsigned int *)t13);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB156;

LAB157:    memcpy(t40, t35, 8);

LAB158:    t73 = (t40 + 4);
    t68 = *((unsigned int *)t73);
    t69 = (~(t68));
    t70 = *((unsigned int *)t40);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB171;

LAB172:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1344U);
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
        goto LAB177;

LAB174:    if (t23 != 0)
        goto LAB176;

LAB175:    *((unsigned int *)t11) = 1;

LAB177:    t9 = (t11 + 4);
    t28 = *((unsigned int *)t9);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB178;

LAB179:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB180:
LAB173:    goto LAB23;

LAB17:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1344U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng10)));
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
        goto LAB184;

LAB181:    if (t23 != 0)
        goto LAB183;

LAB182:    *((unsigned int *)t11) = 1;

LAB184:    memset(t35, 0, 8);
    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB185;

LAB186:    if (*((unsigned int *)t10) != 0)
        goto LAB187;

LAB188:    t13 = (t35 + 4);
    t44 = *((unsigned int *)t35);
    t45 = (!(t44));
    t46 = *((unsigned int *)t13);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB189;

LAB190:    memcpy(t40, t35, 8);

LAB191:    t73 = (t40 + 4);
    t93 = *((unsigned int *)t73);
    t94 = (~(t93));
    t95 = *((unsigned int *)t40);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB203;

LAB204:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1756);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB205:    goto LAB23;

LAB19:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1756);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB23;

LAB26:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(38, ng0);

LAB31:    xsi_set_current_line(39, ng0);
    t33 = ((char*)((ng3)));
    t34 = (t0 + 1756);
    xsi_vlogvar_assign_value(t34, t33, 0, 0, 3);
    goto LAB30;

LAB33:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB35;

LAB37:    *((unsigned int *)t35) = 1;
    goto LAB40;

LAB39:    t10 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB40;

LAB41:    t13 = (t0 + 1344U);
    t26 = *((char **)t13);
    t13 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t27 = (t26 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB45;

LAB44:    t33 = (t13 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB45;

LAB48:    if (*((unsigned int *)t26) > *((unsigned int *)t13))
        goto LAB47;

LAB46:    *((unsigned int *)t36) = 1;

LAB47:    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t22 = *((unsigned int *)t38);
    t23 = (~(t22));
    t24 = *((unsigned int *)t36);
    t25 = (t24 & t23);
    t28 = (t25 & 1U);
    if (t28 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t38) != 0)
        goto LAB51;

LAB52:    t29 = *((unsigned int *)t35);
    t30 = *((unsigned int *)t37);
    t31 = (t29 & t30);
    *((unsigned int *)t40) = t31;
    t41 = (t35 + 4);
    t42 = (t37 + 4);
    t43 = (t40 + 4);
    t32 = *((unsigned int *)t41);
    t44 = *((unsigned int *)t42);
    t45 = (t32 | t44);
    *((unsigned int *)t43) = t45;
    t46 = *((unsigned int *)t43);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB43;

LAB45:    t34 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB47;

LAB49:    *((unsigned int *)t37) = 1;
    goto LAB52;

LAB51:    t39 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB52;

LAB53:    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t40) = (t48 | t49);
    t50 = (t35 + 4);
    t51 = (t37 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (~(t58));
    t8 = (t53 & t55);
    t60 = (t57 & t59);
    t61 = (~(t8));
    t62 = (~(t60));
    t63 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t63 & t61);
    t64 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t64 & t62);
    t65 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t65 & t61);
    t66 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t66 & t62);
    goto LAB55;

LAB56:    xsi_set_current_line(41, ng0);

LAB59:    xsi_set_current_line(42, ng0);
    t73 = ((char*)((ng6)));
    t74 = (t0 + 1756);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 3);
    goto LAB58;

LAB61:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB63;

LAB65:    *((unsigned int *)t35) = 1;
    goto LAB68;

LAB67:    t12 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB68;

LAB69:    t26 = (t0 + 1344U);
    t27 = *((char **)t26);
    t26 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t33 = (t27 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB73;

LAB72:    t34 = (t26 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB73;

LAB76:    if (*((unsigned int *)t27) > *((unsigned int *)t26))
        goto LAB75;

LAB74:    *((unsigned int *)t36) = 1;

LAB75:    memset(t37, 0, 8);
    t39 = (t36 + 4);
    t22 = *((unsigned int *)t39);
    t23 = (~(t22));
    t24 = *((unsigned int *)t36);
    t25 = (t24 & t23);
    t28 = (t25 & 1U);
    if (t28 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t39) != 0)
        goto LAB79;

LAB80:    t29 = *((unsigned int *)t35);
    t30 = *((unsigned int *)t37);
    t31 = (t29 & t30);
    *((unsigned int *)t40) = t31;
    t42 = (t35 + 4);
    t43 = (t37 + 4);
    t50 = (t40 + 4);
    t32 = *((unsigned int *)t42);
    t44 = *((unsigned int *)t43);
    t45 = (t32 | t44);
    *((unsigned int *)t50) = t45;
    t46 = *((unsigned int *)t50);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB81;

LAB82:
LAB83:    goto LAB71;

LAB73:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB75;

LAB77:    *((unsigned int *)t37) = 1;
    goto LAB80;

LAB79:    t41 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB80;

LAB81:    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t50);
    *((unsigned int *)t40) = (t48 | t49);
    t51 = (t35 + 4);
    t67 = (t37 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t51);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t67);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t75 = (t57 & t59);
    t61 = (~(t60));
    t62 = (~(t75));
    t63 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t63 & t61);
    t64 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t64 & t62);
    t65 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t65 & t61);
    t66 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t66 & t62);
    goto LAB83;

LAB84:    xsi_set_current_line(47, ng0);

LAB87:    xsi_set_current_line(48, ng0);
    t74 = ((char*)((ng8)));
    t76 = (t0 + 1756);
    xsi_vlogvar_assign_value(t76, t74, 0, 0, 3);
    goto LAB86;

LAB90:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB91;

LAB92:    xsi_set_current_line(54, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 1756);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB94;

LAB97:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB98;

LAB99:    *((unsigned int *)t35) = 1;
    goto LAB102;

LAB101:    t10 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB102;

LAB103:    t13 = (t0 + 1344U);
    t26 = *((char **)t13);
    t13 = ((char*)((ng11)));
    memset(t36, 0, 8);
    t27 = (t26 + 4);
    t33 = (t13 + 4);
    t48 = *((unsigned int *)t26);
    t49 = *((unsigned int *)t13);
    t52 = (t48 ^ t49);
    t53 = *((unsigned int *)t27);
    t54 = *((unsigned int *)t33);
    t55 = (t53 ^ t54);
    t56 = (t52 | t55);
    t57 = *((unsigned int *)t27);
    t58 = *((unsigned int *)t33);
    t59 = (t57 | t58);
    t61 = (~(t59));
    t62 = (t56 & t61);
    if (t62 != 0)
        goto LAB109;

LAB106:    if (t59 != 0)
        goto LAB108;

LAB107:    *((unsigned int *)t36) = 1;

LAB109:    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t63 = *((unsigned int *)t38);
    t64 = (~(t63));
    t65 = *((unsigned int *)t36);
    t66 = (t65 & t64);
    t68 = (t66 & 1U);
    if (t68 != 0)
        goto LAB110;

LAB111:    if (*((unsigned int *)t38) != 0)
        goto LAB112;

LAB113:    t69 = *((unsigned int *)t35);
    t70 = *((unsigned int *)t37);
    t71 = (t69 | t70);
    *((unsigned int *)t40) = t71;
    t41 = (t35 + 4);
    t42 = (t37 + 4);
    t43 = (t40 + 4);
    t72 = *((unsigned int *)t41);
    t77 = *((unsigned int *)t42);
    t78 = (t72 | t77);
    *((unsigned int *)t43) = t78;
    t79 = *((unsigned int *)t43);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB114;

LAB115:
LAB116:    goto LAB105;

LAB108:    t34 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB109;

LAB110:    *((unsigned int *)t37) = 1;
    goto LAB113;

LAB112:    t39 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB113;

LAB114:    t81 = *((unsigned int *)t40);
    t82 = *((unsigned int *)t43);
    *((unsigned int *)t40) = (t81 | t82);
    t50 = (t35 + 4);
    t51 = (t37 + 4);
    t83 = *((unsigned int *)t50);
    t84 = (~(t83));
    t85 = *((unsigned int *)t35);
    t8 = (t85 & t84);
    t86 = *((unsigned int *)t51);
    t87 = (~(t86));
    t88 = *((unsigned int *)t37);
    t60 = (t88 & t87);
    t89 = (~(t8));
    t90 = (~(t60));
    t91 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t91 & t89);
    t92 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t92 & t90);
    goto LAB116;

LAB117:    xsi_set_current_line(56, ng0);
    t73 = ((char*)((ng12)));
    t74 = (t0 + 1756);
    xsi_vlogvar_assign_value(t74, t73, 0, 0, 3);
    goto LAB119;

LAB121:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB123;

LAB125:    *((unsigned int *)t35) = 1;
    goto LAB128;

LAB127:    t12 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB128;

LAB129:    t26 = (t0 + 1344U);
    t27 = *((char **)t26);
    t26 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t33 = (t27 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB133;

LAB132:    t34 = (t26 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB133;

LAB136:    if (*((unsigned int *)t27) > *((unsigned int *)t26))
        goto LAB135;

LAB134:    *((unsigned int *)t36) = 1;

LAB135:    memset(t37, 0, 8);
    t39 = (t36 + 4);
    t22 = *((unsigned int *)t39);
    t23 = (~(t22));
    t24 = *((unsigned int *)t36);
    t25 = (t24 & t23);
    t28 = (t25 & 1U);
    if (t28 != 0)
        goto LAB137;

LAB138:    if (*((unsigned int *)t39) != 0)
        goto LAB139;

LAB140:    t29 = *((unsigned int *)t35);
    t30 = *((unsigned int *)t37);
    t31 = (t29 & t30);
    *((unsigned int *)t40) = t31;
    t42 = (t35 + 4);
    t43 = (t37 + 4);
    t50 = (t40 + 4);
    t32 = *((unsigned int *)t42);
    t44 = *((unsigned int *)t43);
    t45 = (t32 | t44);
    *((unsigned int *)t50) = t45;
    t46 = *((unsigned int *)t50);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB141;

LAB142:
LAB143:    goto LAB131;

LAB133:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB135;

LAB137:    *((unsigned int *)t37) = 1;
    goto LAB140;

LAB139:    t41 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB140;

LAB141:    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t50);
    *((unsigned int *)t40) = (t48 | t49);
    t51 = (t35 + 4);
    t67 = (t37 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t51);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t67);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t75 = (t57 & t59);
    t61 = (~(t60));
    t62 = (~(t75));
    t63 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t63 & t61);
    t64 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t64 & t62);
    t65 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t65 & t61);
    t66 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t66 & t62);
    goto LAB143;

LAB144:    xsi_set_current_line(61, ng0);
    t74 = ((char*)((ng8)));
    t76 = (t0 + 1756);
    xsi_vlogvar_assign_value(t76, t74, 0, 0, 3);
    goto LAB146;

LAB148:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB150;

LAB152:    *((unsigned int *)t35) = 1;
    goto LAB155;

LAB154:    t12 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB155;

LAB156:    t26 = (t0 + 1344U);
    t27 = *((char **)t26);
    t26 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t33 = (t27 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB160;

LAB159:    t34 = (t26 + 4);
    if (*((unsigned int *)t34) != 0)
        goto LAB160;

LAB163:    if (*((unsigned int *)t27) > *((unsigned int *)t26))
        goto LAB162;

LAB161:    *((unsigned int *)t36) = 1;

LAB162:    memset(t37, 0, 8);
    t39 = (t36 + 4);
    t22 = *((unsigned int *)t39);
    t23 = (~(t22));
    t24 = *((unsigned int *)t36);
    t25 = (t24 & t23);
    t28 = (t25 & 1U);
    if (t28 != 0)
        goto LAB164;

LAB165:    if (*((unsigned int *)t39) != 0)
        goto LAB166;

LAB167:    t29 = *((unsigned int *)t35);
    t30 = *((unsigned int *)t37);
    t31 = (t29 & t30);
    *((unsigned int *)t40) = t31;
    t42 = (t35 + 4);
    t43 = (t37 + 4);
    t50 = (t40 + 4);
    t32 = *((unsigned int *)t42);
    t44 = *((unsigned int *)t43);
    t45 = (t32 | t44);
    *((unsigned int *)t50) = t45;
    t46 = *((unsigned int *)t50);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB168;

LAB169:
LAB170:    goto LAB158;

LAB160:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB162;

LAB164:    *((unsigned int *)t37) = 1;
    goto LAB167;

LAB166:    t41 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB167;

LAB168:    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t50);
    *((unsigned int *)t40) = (t48 | t49);
    t51 = (t35 + 4);
    t67 = (t37 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t51);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t67);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t75 = (t57 & t59);
    t61 = (~(t60));
    t62 = (~(t75));
    t63 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t63 & t61);
    t64 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t64 & t62);
    t65 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t65 & t61);
    t66 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t66 & t62);
    goto LAB170;

LAB171:    xsi_set_current_line(66, ng0);
    t74 = ((char*)((ng6)));
    t76 = (t0 + 1756);
    xsi_vlogvar_assign_value(t76, t74, 0, 0, 3);
    goto LAB173;

LAB176:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB177;

LAB178:    xsi_set_current_line(68, ng0);
    t10 = ((char*)((ng3)));
    t12 = (t0 + 1756);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 3);
    goto LAB180;

LAB183:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB184;

LAB185:    *((unsigned int *)t35) = 1;
    goto LAB188;

LAB187:    t12 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB188;

LAB189:    t26 = (t0 + 1344U);
    t27 = *((char **)t26);
    t26 = ((char*)((ng11)));
    memset(t36, 0, 8);
    t33 = (t27 + 4);
    t34 = (t26 + 4);
    t48 = *((unsigned int *)t27);
    t49 = *((unsigned int *)t26);
    t52 = (t48 ^ t49);
    t53 = *((unsigned int *)t33);
    t54 = *((unsigned int *)t34);
    t55 = (t53 ^ t54);
    t56 = (t52 | t55);
    t57 = *((unsigned int *)t33);
    t58 = *((unsigned int *)t34);
    t59 = (t57 | t58);
    t61 = (~(t59));
    t62 = (t56 & t61);
    if (t62 != 0)
        goto LAB195;

LAB192:    if (t59 != 0)
        goto LAB194;

LAB193:    *((unsigned int *)t36) = 1;

LAB195:    memset(t37, 0, 8);
    t39 = (t36 + 4);
    t63 = *((unsigned int *)t39);
    t64 = (~(t63));
    t65 = *((unsigned int *)t36);
    t66 = (t65 & t64);
    t68 = (t66 & 1U);
    if (t68 != 0)
        goto LAB196;

LAB197:    if (*((unsigned int *)t39) != 0)
        goto LAB198;

LAB199:    t69 = *((unsigned int *)t35);
    t70 = *((unsigned int *)t37);
    t71 = (t69 | t70);
    *((unsigned int *)t40) = t71;
    t42 = (t35 + 4);
    t43 = (t37 + 4);
    t50 = (t40 + 4);
    t72 = *((unsigned int *)t42);
    t77 = *((unsigned int *)t43);
    t78 = (t72 | t77);
    *((unsigned int *)t50) = t78;
    t79 = *((unsigned int *)t50);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB200;

LAB201:
LAB202:    goto LAB191;

LAB194:    t38 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB195;

LAB196:    *((unsigned int *)t37) = 1;
    goto LAB199;

LAB198:    t41 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB199;

LAB200:    t81 = *((unsigned int *)t40);
    t82 = *((unsigned int *)t50);
    *((unsigned int *)t40) = (t81 | t82);
    t51 = (t35 + 4);
    t67 = (t37 + 4);
    t83 = *((unsigned int *)t51);
    t84 = (~(t83));
    t85 = *((unsigned int *)t35);
    t60 = (t85 & t84);
    t86 = *((unsigned int *)t67);
    t87 = (~(t86));
    t88 = *((unsigned int *)t37);
    t75 = (t88 & t87);
    t89 = (~(t60));
    t90 = (~(t75));
    t91 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t91 & t89);
    t92 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t92 & t90);
    goto LAB202;

LAB203:    xsi_set_current_line(73, ng0);
    t74 = ((char*)((ng13)));
    t76 = (t0 + 1756);
    xsi_vlogvar_assign_value(t76, t74, 0, 0, 3);
    goto LAB205;

}

static void Always_82_1(char *t0)
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 2424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2772);
    *((int *)t2) = 1;
    t3 = (t0 + 2452);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);

LAB5:    xsi_set_current_line(83, ng0);
    t4 = (t0 + 1252U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng14)));
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

LAB11:    xsi_set_current_line(86, ng0);

LAB14:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1756);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1664);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(83, ng0);

LAB13:    xsi_set_current_line(84, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1664);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB12;

}

static void Cont_90_2(char *t0)
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

LAB0:    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1664);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
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

LAB7:    t22 = (t0 + 2824);
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
    t35 = (t0 + 2780);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}


extern void work_m_00000000001369275915_3985308163_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Always_82_1,(void *)Cont_90_2};
	xsi_register_didat("work_m_00000000001369275915_3985308163", "isim/tb_isim_beh.exe.sim/work/m_00000000001369275915_3985308163.didat");
	xsi_register_executes(pe);
}
