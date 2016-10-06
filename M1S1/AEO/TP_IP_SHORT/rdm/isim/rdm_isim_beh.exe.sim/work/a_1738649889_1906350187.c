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

/* This file is designed for use with ISim build 0xcb73ee62 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Travail/TP Informatique/M1S1/AEO/TP_IP_SHORT/rdm/rdm.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_853553178_503743352(char *, unsigned char , unsigned char );


static void work_a_1738649889_1906350187_p_0(char *t0)
{
    char t40[16];
    char t41[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t2 = (t0 + 2092);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 1976);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 684U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 3628);
    t12 = (t0 + 2020);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t17 = (0 - 31);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t6 = *((unsigned char *)t2);
    t8 = (t0 + 960U);
    t11 = *((char **)t8);
    t21 = (2 - 31);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t8 = (t11 + t24);
    t7 = *((unsigned char *)t8);
    t9 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t6, t7);
    t12 = (t0 + 960U);
    t13 = *((char **)t12);
    t25 = (3 - 31);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t12 = (t13 + t28);
    t10 = *((unsigned char *)t12);
    t29 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t9, t10);
    t14 = (t0 + 960U);
    t15 = *((char **)t14);
    t30 = (4 - 31);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t14 = (t15 + t33);
    t34 = *((unsigned char *)t14);
    t35 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t29, t34);
    t16 = (t0 + 2056);
    t36 = (t16 + 32U);
    t37 = *((char **)t36);
    t38 = (t37 + 40U);
    t39 = *((char **)t38);
    *((unsigned char *)t39) = t35;
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t17 = (32 - 1);
    t18 = (31 - t17);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t11 = ((IEEE_P_2592010699) + 2332);
    t12 = (t41 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 31;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t21 = (1 - 31);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t22;
    t8 = xsi_base_array_concat(t8, t40, t11, (char)99, t1, (char)97, t2, t41, (char)101);
    t13 = (t0 + 2020);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t36 = *((char **)t16);
    memcpy(t36, t8, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB12;

}


extern void work_a_1738649889_1906350187_init()
{
	static char *pe[] = {(void *)work_a_1738649889_1906350187_p_0};
	xsi_register_didat("work_a_1738649889_1906350187", "isim/rdm_isim_beh.exe.sim/work/a_1738649889_1906350187.didat");
	xsi_register_executes(pe);
}
