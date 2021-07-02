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
static const char *ng0 = "D:/Nauka/Studia/6. Semestr letni 2020-2021/UCiSW2_Projekt/Organki_Gr_4/Sub_Schema_Test.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_1419916740_3212880686_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(106, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 5000);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 5000);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4920);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1419916740_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    int64 t20;
    unsigned char t21;

LAB0:    t1 = (t0 + 4600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 9336);
    *((int *)t2) = 0;
    t3 = (t0 + 9340);
    *((int *)t3) = 19;
    t4 = 0;
    t5 = 19;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(116, ng0);
    t6 = (t0 + 3248U);
    t7 = *((char **)t6);
    t6 = (t0 + 9336);
    t8 = *((int *)t6);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    t11 = (8U * t10);
    t12 = (0 + t11);
    t13 = (t7 + t12);
    t14 = (t0 + 5064);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t13, 8U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t19 = (20 * 1000LL);
    t2 = (t0 + 4408);
    xsi_process_wait(t2, t19);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 9336);
    t4 = *((int *)t2);
    t3 = (t0 + 9340);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB27:    t8 = (t4 + 1);
    t4 = t8;
    t6 = (t0 + 9336);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t19 = (1 * 1000000LL);
    t20 = (t8 * t19);
    t2 = (t0 + 4408);
    xsi_process_wait(t2, t20);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5192);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t19 = (20 * 1000LL);
    t2 = (t0 + 4408);
    xsi_process_wait(t2, t19);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t21 = (t8 >= 9000);
    if (t21 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = (t8 + 1100);
    t2 = (t0 + 3368U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t9;

LAB21:    xsi_set_current_line(134, ng0);
    t19 = (1 * 1000000000LL);
    t2 = (t0 + 4408);
    xsi_process_wait(t2, t19);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3368U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = 500;
    goto LAB21;

LAB23:    goto LAB6;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}


extern void work_a_1419916740_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1419916740_3212880686_p_0,(void *)work_a_1419916740_3212880686_p_1};
	xsi_register_didat("work_a_1419916740_3212880686", "isim/Sub_Schema_Sub_Schema_sch_tb_isim_beh.exe.sim/work/a_1419916740_3212880686.didat");
	xsi_register_executes(pe);
}
