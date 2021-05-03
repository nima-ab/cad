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
static const char *ng0 = "D:/Nima/Uni/Computer Aided Design/Xilinx/Assignment_1/priority_encoder.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {3U, 1U};
static unsigned int ng3[] = {7U, 3U};
static unsigned int ng4[] = {15U, 7U};
static unsigned int ng5[] = {31U, 15U};
static unsigned int ng6[] = {63U, 31U};
static unsigned int ng7[] = {127U, 63U};
static unsigned int ng8[] = {255U, 127U};
static unsigned int ng9[] = {0U, 0U};
static unsigned int ng10[] = {2U, 0U};
static unsigned int ng11[] = {3U, 0U};
static unsigned int ng12[] = {4U, 0U};
static unsigned int ng13[] = {5U, 0U};
static unsigned int ng14[] = {6U, 0U};
static unsigned int ng15[] = {7U, 0U};

static void NetReassign_30_1(char *);
static void NetReassign_31_2(char *);
static void NetReassign_32_3(char *);
static void NetReassign_33_4(char *);
static void NetReassign_34_5(char *);
static void NetReassign_35_6(char *);
static void NetReassign_36_7(char *);
static void NetReassign_37_8(char *);


static void Always_27_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 4832);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(28, ng0);

LAB9:    xsi_set_current_line(29, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);

LAB10:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t11, 8);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 8, t2, 8);
    if (t13 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB8;

LAB11:    xsi_set_current_line(30, ng0);
    t14 = (t0 + 1608);
    xsi_set_assignedflag(t14);
    t15 = (t0 + 6452);
    *((int *)t15) = 1;
    NetReassign_30_1(t0);
    goto LAB27;

LAB13:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6456);
    *((int *)t4) = 1;
    NetReassign_31_2(t0);
    goto LAB27;

LAB15:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6460);
    *((int *)t4) = 1;
    NetReassign_32_3(t0);
    goto LAB27;

LAB17:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6464);
    *((int *)t4) = 1;
    NetReassign_33_4(t0);
    goto LAB27;

LAB19:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6468);
    *((int *)t4) = 1;
    NetReassign_34_5(t0);
    goto LAB27;

LAB21:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6472);
    *((int *)t4) = 1;
    NetReassign_35_6(t0);
    goto LAB27;

LAB23:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6476);
    *((int *)t4) = 1;
    NetReassign_36_7(t0);
    goto LAB27;

LAB25:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1608);
    xsi_set_assignedflag(t3);
    t4 = (t0 + 6480);
    *((int *)t4) = 1;
    NetReassign_37_8(t0);
    goto LAB27;

}

static void NetReassign_30_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t3 = 0;
    t2 = ((char*)((ng9)));
    t4 = (t0 + 6452);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_31_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6456);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_32_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t3 = 0;
    t2 = ((char*)((ng10)));
    t4 = (t0 + 6460);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_33_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t3 = 0;
    t2 = ((char*)((ng11)));
    t4 = (t0 + 6464);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_34_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t3 = 0;
    t2 = ((char*)((ng12)));
    t4 = (t0 + 6468);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_35_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t3 = 0;
    t2 = ((char*)((ng13)));
    t4 = (t0 + 6472);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_36_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t3 = 0;
    t2 = ((char*)((ng14)));
    t4 = (t0 + 6476);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_37_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t3 = 0;
    t2 = ((char*)((ng15)));
    t4 = (t0 + 6480);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 1608);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 3, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000000097555127_4012348614_init()
{
	static char *pe[] = {(void *)Always_27_0,(void *)NetReassign_30_1,(void *)NetReassign_31_2,(void *)NetReassign_32_3,(void *)NetReassign_33_4,(void *)NetReassign_34_5,(void *)NetReassign_35_6,(void *)NetReassign_36_7,(void *)NetReassign_37_8};
	xsi_register_didat("work_m_00000000000097555127_4012348614", "isim/priority_encoder_isim_beh.exe.sim/work/m_00000000000097555127_4012348614.didat");
	xsi_register_executes(pe);
}
