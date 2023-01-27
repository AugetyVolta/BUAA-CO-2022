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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001305120916_0757879789_init();
    work_m_00000000003810127238_3224323566_init();
    work_m_00000000001748897151_0345418465_init();
    work_m_00000000001064713346_2593248389_init();
    work_m_00000000003052193726_1621229167_init();
    work_m_00000000002531025266_1579609468_init();
    work_m_00000000002461226829_1785967555_init();
    work_m_00000000003397746274_0103510313_init();
    work_m_00000000000796932892_0886308060_init();
    work_m_00000000001471572644_2916262309_init();
    work_m_00000000003547170291_2924402094_init();
    work_m_00000000002382065372_0103117755_init();
    work_m_00000000000959368426_0778432761_init();
    work_m_00000000000404508762_0549353675_init();
    work_m_00000000000661613892_2081794187_init();
    work_m_00000000000405774484_3877310806_init();
    work_m_00000000002047498008_3671711236_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_3671711236");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}