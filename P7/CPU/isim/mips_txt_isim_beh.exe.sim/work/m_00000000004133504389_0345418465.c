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
static const char *ng0 = "D:/Desktop/CO/P7/CPU/IF_ID.v";
static unsigned int ng1[] = {12288U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {16768U, 0U};
static int ng4[] = {1, 0};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Always_39_1(char *t0)
{
    char t6[8];
    char t20[8];
    char t27[8];
    char t61[8];
    char t62[8];
    char t80[8];
    char t81[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4536);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB10;

LAB11:    memcpy(t27, t6, 8);

LAB12:    t55 = (t27 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t27);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(46, ng0);

LAB50:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t21 = (t16 | t17);
    t22 = (~(t21));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB54;

LAB51:    if (t21 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t6) = 1;

LAB54:    t13 = (t6 + 4);
    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t25);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB55;

LAB56:
LAB57:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t18 = (t0 + 1368U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t19 + 4);
    t21 = *((unsigned int *)t18);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t18) != 0)
        goto LAB15;

LAB16:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t20);
    t30 = (t28 | t29);
    *((unsigned int *)t27) = t30;
    t31 = (t6 + 4);
    t32 = (t20 + 4);
    t33 = (t27 + 4);
    t34 = *((unsigned int *)t31);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t20) = 1;
    goto LAB16;

LAB15:    t26 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB16;

LAB17:    t39 = *((unsigned int *)t27);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t27) = (t39 | t40);
    t41 = (t6 + 4);
    t42 = (t20 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (~(t43));
    t45 = *((unsigned int *)t6);
    t46 = (t45 & t44);
    t47 = *((unsigned int *)t42);
    t48 = (~(t47));
    t49 = *((unsigned int *)t20);
    t50 = (t49 & t48);
    t51 = (~(t46));
    t52 = (~(t50));
    t53 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t53 & t51);
    t54 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t54 & t52);
    goto LAB19;

LAB20:    xsi_set_current_line(40, ng0);

LAB23:    xsi_set_current_line(41, ng0);
    t63 = (t0 + 1208U);
    t64 = *((char **)t63);
    memset(t62, 0, 8);
    t63 = (t64 + 4);
    t65 = *((unsigned int *)t63);
    t66 = (~(t65));
    t67 = *((unsigned int *)t64);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t63) != 0)
        goto LAB26;

LAB27:    t71 = (t62 + 4);
    t72 = *((unsigned int *)t62);
    t73 = *((unsigned int *)t71);
    t74 = (t72 || t73);
    if (t74 > 0)
        goto LAB28;

LAB29:    t76 = *((unsigned int *)t62);
    t77 = (~(t76));
    t78 = *((unsigned int *)t71);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t71) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t62) > 0)
        goto LAB34;

LAB35:    memcpy(t61, t80, 8);

LAB36:    t100 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t100, t61, 0, 0, 32, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB22;

LAB24:    *((unsigned int *)t62) = 1;
    goto LAB27;

LAB26:    t70 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB27;

LAB28:    t75 = ((char*)((ng1)));
    goto LAB29;

LAB30:    t82 = (t0 + 1368U);
    t83 = *((char **)t82);
    memset(t81, 0, 8);
    t82 = (t83 + 4);
    t84 = *((unsigned int *)t82);
    t85 = (~(t84));
    t86 = *((unsigned int *)t83);
    t87 = (t86 & t85);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t82) != 0)
        goto LAB39;

LAB40:    t90 = (t81 + 4);
    t91 = *((unsigned int *)t81);
    t92 = *((unsigned int *)t90);
    t93 = (t91 || t92);
    if (t93 > 0)
        goto LAB41;

LAB42:    t95 = *((unsigned int *)t81);
    t96 = (~(t95));
    t97 = *((unsigned int *)t90);
    t98 = (t96 || t97);
    if (t98 > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t90) > 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t81) > 0)
        goto LAB47;

LAB48:    memcpy(t80, t99, 8);

LAB49:    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t61, 32, t75, 32, t80, 32);
    goto LAB36;

LAB34:    memcpy(t61, t75, 8);
    goto LAB36;

LAB37:    *((unsigned int *)t81) = 1;
    goto LAB40;

LAB39:    t89 = (t81 + 4);
    *((unsigned int *)t81) = 1;
    *((unsigned int *)t89) = 1;
    goto LAB40;

LAB41:    t94 = ((char*)((ng3)));
    goto LAB42;

LAB43:    t99 = ((char*)((ng1)));
    goto LAB44;

LAB45:    xsi_vlog_unsigned_bit_combine(t80, 32, t94, 32, t99, 32);
    goto LAB49;

LAB47:    memcpy(t80, t94, 8);
    goto LAB49;

LAB53:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(47, ng0);

LAB58:    xsi_set_current_line(48, ng0);
    t18 = (t0 + 1688U);
    t19 = *((char **)t18);
    t18 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t18, t19, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB57;

}


extern void work_m_00000000004133504389_0345418465_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_39_1};
	xsi_register_didat("work_m_00000000004133504389_0345418465", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000004133504389_0345418465.didat");
	xsi_register_executes(pe);
}
