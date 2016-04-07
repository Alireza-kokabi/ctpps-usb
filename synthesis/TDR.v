`timescale 1 ns/100 ps
// Version: v11.7 11.7.0.119


module DACController(
       ControlDecoder_0_threshold_voltage_1,
       clk_c,
       dac_din_1_c,
       dac_sync_1_c,
       dac_ldac_1_c,
       dac_sclk_1_c
    );
input  [13:0] ControlDecoder_0_threshold_voltage_1;
input  clk_c;
output dac_din_1_c;
output dac_sync_1_c;
output dac_ldac_1_c;
output dac_sclk_1_c;

    wire \sclock_counter[31]_net_1 , \sclock_counter_s[31] , 
        dataready_net_1, dataready_i_0, \un3_sclockv_0_data_tmp[6] , 
        \un3_sclockv_0_data_tmp_i_0[6] , \cache1[12]_net_1 , VCC_net_1, 
        dataready_2_sqmuxa_net_1, GND_net_1, \cache1[13]_net_1 , 
        temp_7, sequence_1_net_1, \sequence[1]_net_1 , N_152_i, 
        temp_1_sqmuxa_2_net_1, \index[2]_net_1 , N_162, 
        un1_sclock_counter15_1_i_0, \index[3]_net_1 , N_163, 
        \index[4]_net_1 , \index_7[4]_net_1 , \cache1[0]_net_1 , 
        \cache1[1]_net_1 , \cache1[2]_net_1 , \cache1[3]_net_1 , 
        \cache1[4]_net_1 , \cache1[5]_net_1 , \cache1[6]_net_1 , 
        \cache1[7]_net_1 , \cache1[8]_net_1 , \cache1[9]_net_1 , 
        \cache1[10]_net_1 , \cache1[11]_net_1 , \temp[3]_net_1 , 
        \temp_14[3]_net_1 , index_1_sqmuxa_1_net_1, \temp[4]_net_1 , 
        \temp_14[4]_net_1 , \temp[5]_net_1 , \temp_14[5]_net_1 , 
        \temp[6]_net_1 , \temp_14[6]_net_1 , \temp[7]_net_1 , 
        \temp_14[7]_net_1 , \temp[8]_net_1 , \temp_14[8]_net_1 , 
        \temp[9]_net_1 , \temp_14[9]_net_1 , \temp[10]_net_1 , 
        \temp_14[10]_net_1 , \temp[11]_net_1 , \temp_14[11]_net_1 , 
        \temp[12]_net_1 , \temp_14[12]_net_1 , \temp[13]_net_1 , 
        \temp_14[13]_net_1 , \temp[14]_net_1 , \temp_14[14]_net_1 , 
        \temp[15]_net_1 , \temp_14[15]_net_1 , \index[0]_net_1 , 
        \index_7[0]_net_1 , \index[1]_net_1 , N_161, \temp[1]_net_1 , 
        \temp_14[1]_net_1 , \temp[2]_net_1 , \temp_14[2]_net_1 , 
        un1_sclock_counter15_3_net_1, dinv_6, sclock_counter15_net_1, 
        temp_0_sqmuxa_i_0, un1_sclock_counter15_5_net_1, 
        un1_sclock_counter15_4_net_1, un2_sclock_counter_i_0_i, 
        \sclock_counter[30]_net_1 , \sclock_counter_s[30] , 
        \sclock_counter[29]_net_1 , \sclock_counter_s[29] , 
        \sclock_counter[28]_net_1 , \sclock_counter_s[28] , 
        \sclock_counter[27]_net_1 , \sclock_counter_s[27] , 
        \sclock_counter[26]_net_1 , \sclock_counter_s[26] , 
        \sclock_counter[25]_net_1 , \sclock_counter_s[25] , 
        \sclock_counter[24]_net_1 , \sclock_counter_s[24] , 
        \sclock_counter[23]_net_1 , \sclock_counter_s[23] , 
        \sclock_counter[22]_net_1 , \sclock_counter_s[22] , 
        \sclock_counter[21]_net_1 , \sclock_counter_s[21] , 
        \sclock_counter[20]_net_1 , \sclock_counter_s[20] , 
        \sclock_counter[19]_net_1 , \sclock_counter_s[19] , 
        \sclock_counter[18]_net_1 , \sclock_counter_s[18] , 
        \sclock_counter[17]_net_1 , \sclock_counter_s[17] , 
        \sclock_counter[16]_net_1 , \sclock_counter_s[16]_net_1 , 
        temp_7_cry_1_net_1, temp_7_cry_1_Y, temp_7_cry_2_net_1, 
        \temp_7[2] , temp_7_cry_3_net_1, \temp_7[3] , 
        temp_7_cry_4_net_1, \temp_7[4] , temp_7_cry_5_net_1, 
        \temp_7[5] , temp_7_cry_6_net_1, \temp_7[6] , 
        temp_7_cry_7_net_1, \temp_7[7] , temp_7_cry_8_net_1, 
        \temp_7[8] , temp_7_cry_9_net_1, \temp_7[9] , \temp_7[11] , 
        temp_7_cry_10_net_1, \temp_7[10] , \un3_sclockv_0_data_tmp[0] , 
        \un3_sclockv_0_data_tmp[1] , \un3_sclockv_0_data_tmp[2] , 
        \un3_sclockv_0_data_tmp[3] , \un3_sclockv_0_data_tmp[4] , 
        \un3_sclockv_0_data_tmp[5] , sclock_counter_s_765_FCO, 
        \sclock_counter_cry[30]_net_1 , \sclock_counter_cry[29]_net_1 , 
        \sclock_counter_cry[28]_net_1 , \sclock_counter_cry[27]_net_1 , 
        \sclock_counter_cry[26]_net_1 , \sclock_counter_cry[25]_net_1 , 
        \sclock_counter_cry[24]_net_1 , \sclock_counter_cry[23]_net_1 , 
        \sclock_counter_cry[22]_net_1 , \sclock_counter_cry[21]_net_1 , 
        \sclock_counter_cry[20]_net_1 , \sclock_counter_cry[19]_net_1 , 
        \sclock_counter_cry[18]_net_1 , \sclock_counter_cry[17]_net_1 , 
        ldac_barv_2_sqmuxa_3_net_1, ldac_barv_2_sqmuxa_net_1, 
        ldac_barv_2_sqmuxa_0_net_1, un2_sclock_counterlto14_0_net_1, 
        un33_sclockv_1_net_1, index_2_sqmuxa_1_net_1, \temp_m_2[15] , 
        \temp_m_1[15] , un2_sclock_counterlt12, 
        un2_sclock_counter_1lt11, CO2, un2_sclock_counterlt14, 
        un2_sclock_counter_1lt13, un33_sclockv_net_1, 
        un1_sclockv_2_net_1, un1_dinv_2_sqmuxa_net_1, 
        un2_sclock_counter_1lt15, un1_sync_barv_0_sqmuxa_net_1;
    
    ARI1 #( .INIT(20'h555FF) )  temp_7_cry_10 (.A(
        ControlDecoder_0_threshold_voltage_1[10]), .B(temp_7), .C(
        GND_net_1), .D(GND_net_1), .FCI(temp_7_cry_9_net_1), .S(
        \temp_7[10] ), .Y(), .FCO(temp_7_cry_10_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[27]  (.A(VCC_net_1)
        , .B(\sclock_counter[27]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[28]_net_1 ), .S(
        \sclock_counter_s[27] ), .Y(), .FCO(
        \sclock_counter_cry[27]_net_1 ));
    CFG4 #( .INIT(16'hF010) )  un1_sclock_counter15_4 (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(dac_sclk_1_c), .C(
        sclock_counter15_net_1), .D(ldac_barv_2_sqmuxa_net_1), .Y(
        un1_sclock_counter15_4_net_1));
    CFG2 #( .INIT(4'h6) )  \sequence_9_0_x2[1]  (.A(temp_7), .B(
        \sequence[1]_net_1 ), .Y(N_152_i));
    ARI1 #( .INIT(20'h48800) )  temp_7_cry_2 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[2]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_1_net_1), .S(\temp_7[2] ), .Y(), 
        .FCO(temp_7_cry_2_net_1));
    CFG2 #( .INIT(4'h7) )  sync_barv_RNO (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(dataready_net_1), .Y(
        temp_0_sqmuxa_i_0));
    CFG4 #( .INIT(16'h0080) )  temp_1_sqmuxa_2 (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(sclock_counter15_net_1), .C(
        dataready_net_1), .D(dac_sclk_1_c), .Y(temp_1_sqmuxa_2_net_1));
    CFG4 #( .INIT(16'h00FD) )  un1_sync_barv_0_sqmuxa (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(un33_sclockv_net_1), .C(
        dataready_net_1), .D(dac_sclk_1_c), .Y(
        un1_sync_barv_0_sqmuxa_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[29]  (.A(VCC_net_1)
        , .B(\sclock_counter[29]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[30]_net_1 ), .S(
        \sclock_counter_s[29] ), .Y(), .FCO(
        \sclock_counter_cry[29]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[25]  (.A(VCC_net_1)
        , .B(\sclock_counter[25]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[26]_net_1 ), .S(
        \sclock_counter_s[25] ), .Y(), .FCO(
        \sclock_counter_cry[25]_net_1 ));
    ARI1 #( .INIT(20'h555FF) )  temp_7_cry_6 (.A(
        ControlDecoder_0_threshold_voltage_1[6]), .B(temp_7), .C(
        GND_net_1), .D(GND_net_1), .FCI(temp_7_cry_5_net_1), .S(
        \temp_7[6] ), .Y(), .FCO(temp_7_cry_6_net_1));
    CFG3 #( .INIT(8'hCA) )  \temp_14[14]  (.A(\temp[13]_net_1 ), .B(
        \sequence[1]_net_1 ), .C(dataready_net_1), .Y(
        \temp_14[14]_net_1 ));
    SLE \temp[8]  (.D(\temp_14[8]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[8]_net_1 ));
    SLE \cache1[4]  (.D(ControlDecoder_0_threshold_voltage_1[4]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[4]_net_1 ));
    SLE \sclock_counter[28]  (.D(\sclock_counter_s[28] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[28]_net_1 ));
    CFG2 #( .INIT(4'h1) )  un2_sclock_counterlto14_0 (.A(
        \sclock_counter[17]_net_1 ), .B(\sclock_counter[18]_net_1 ), 
        .Y(un2_sclock_counterlto14_0_net_1));
    CFG3 #( .INIT(8'hB8) )  \temp_14[13]  (.A(temp_7), .B(
        dataready_net_1), .C(\temp[12]_net_1 ), .Y(\temp_14[13]_net_1 )
        );
    SLE \cache1[5]  (.D(ControlDecoder_0_threshold_voltage_1[5]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[5]_net_1 ));
    SLE \cache1[7]  (.D(ControlDecoder_0_threshold_voltage_1[7]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[7]_net_1 ));
    ARI1 #( .INIT(20'h555FF) )  temp_7_cry_5 (.A(
        ControlDecoder_0_threshold_voltage_1[5]), .B(temp_7), .C(
        GND_net_1), .D(GND_net_1), .FCI(temp_7_cry_4_net_1), .S(
        \temp_7[5] ), .Y(), .FCO(temp_7_cry_5_net_1));
    SLE dinv (.D(dinv_6), .CLK(clk_c), .EN(sclock_counter15_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(dac_din_1_c));
    SLE \temp[11]  (.D(\temp_14[11]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[11]_net_1 ));
    CFG4 #( .INIT(16'hDFFF) )  un2_sclock_counterlto12 (.A(
        \sclock_counter[19]_net_1 ), .B(un2_sclock_counterlt12), .C(
        \sclock_counter[21]_net_1 ), .D(\sclock_counter[20]_net_1 ), 
        .Y(un2_sclock_counterlt14));
    CFG2 #( .INIT(4'h6) )  \un1_index_1.SUM[3]  (.A(CO2), .B(
        \index[3]_net_1 ), .Y(N_163));
    CFG1 #( .INIT(2'h1) )  \sclock_counter_RNO[31]  (.A(
        \sclock_counter[31]_net_1 ), .Y(\sclock_counter_s[31] ));
    SLE \sclock_counter[24]  (.D(\sclock_counter_s[24] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[24]_net_1 ));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_9 (.A(
        \cache1[11]_net_1 ), .B(
        ControlDecoder_0_threshold_voltage_1[10]), .C(
        ControlDecoder_0_threshold_voltage_1[11]), .D(
        \cache1[10]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[4] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[5] ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[28]  (.A(VCC_net_1)
        , .B(\sclock_counter[28]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[29]_net_1 ), .S(
        \sclock_counter_s[28] ), .Y(), .FCO(
        \sclock_counter_cry[28]_net_1 ));
    SLE \sclock_counter[16]  (.D(\sclock_counter_s[16]_net_1 ), .CLK(
        clk_c), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[16]_net_1 ));
    SLE \cache1[12]  (.D(ControlDecoder_0_threshold_voltage_1[12]), 
        .CLK(clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\cache1[12]_net_1 ));
    ARI1 #( .INIT(20'h48800) )  temp_7_s_11 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[11]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_10_net_1), .S(\temp_7[11] ), .Y(), 
        .FCO());
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[30]  (.A(VCC_net_1)
        , .B(\sclock_counter[30]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(sclock_counter_s_765_FCO), .S(\sclock_counter_s[30] ), .Y(
        ), .FCO(\sclock_counter_cry[30]_net_1 ));
    SLE dataready (.D(dataready_i_0), .CLK(clk_c), .EN(
        un1_sclock_counter15_3_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1)
        , .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        dataready_net_1));
    GND GND (.Y(GND_net_1));
    CFG3 #( .INIT(8'hD8) )  \temp_14[10]  (.A(dataready_net_1), .B(
        \temp_7[9] ), .C(\temp[9]_net_1 ), .Y(\temp_14[10]_net_1 ));
    CFG3 #( .INIT(8'h20) )  ldac_barv_2_sqmuxa (.A(\index[3]_net_1 ), 
        .B(\index[4]_net_1 ), .C(ldac_barv_2_sqmuxa_3_net_1), .Y(
        ldac_barv_2_sqmuxa_net_1));
    SLE \sclock_counter[19]  (.D(\sclock_counter_s[19] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[19]_net_1 ));
    SLE \temp[4]  (.D(\temp_14[4]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[4]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[11]  (.A(dataready_net_1), .B(
        \temp_7[10] ), .C(\temp[10]_net_1 ), .Y(\temp_14[11]_net_1 ));
    SLE \temp[15]  (.D(\temp_14[15]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[15]_net_1 ));
    CFG4 #( .INIT(16'h060A) )  \index_7[4]  (.A(\index[4]_net_1 ), .B(
        \index[3]_net_1 ), .C(index_2_sqmuxa_1_net_1), .D(CO2), .Y(
        \index_7[4]_net_1 ));
    CFG2 #( .INIT(4'h2) )  un3_sclockv_0_I_15_RNI73EK (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(dataready_net_1), .Y(
        \temp_m_2[15] ));
    ARI1 #( .INIT(20'h48800) )  temp_7_cry_7 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[7]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_6_net_1), .S(\temp_7[7] ), .Y(), 
        .FCO(temp_7_cry_7_net_1));
    SLE \temp[10]  (.D(\temp_14[10]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[10]_net_1 ));
    CFG3 #( .INIT(8'h80) )  \temp_14[1]  (.A(dataready_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[0]), .C(temp_7), .Y(
        \temp_14[1]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[2]  (.A(dataready_net_1), .B(
        temp_7_cry_1_Y), .C(\temp[1]_net_1 ), .Y(\temp_14[2]_net_1 ));
    CFG2 #( .INIT(4'h6) )  \un1_index_1.SUM[1]  (.A(\index[0]_net_1 ), 
        .B(\index[1]_net_1 ), .Y(N_161));
    SLE \cache1[6]  (.D(ControlDecoder_0_threshold_voltage_1[6]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[6]_net_1 ));
    SLE \cache1[3]  (.D(ControlDecoder_0_threshold_voltage_1[3]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[3]_net_1 ));
    SLE \temp[7]  (.D(\temp_14[7]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[7]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    SLE \sclock_counter[27]  (.D(\sclock_counter_s[27] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[27]_net_1 ));
    SLE \temp[12]  (.D(\temp_14[12]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[12]_net_1 ));
    CFG4 #( .INIT(16'h0400) )  ldac_barv_2_sqmuxa_3 (.A(N_162), .B(
        ldac_barv_2_sqmuxa_0_net_1), .C(dac_sclk_1_c), .D(N_161), .Y(
        ldac_barv_2_sqmuxa_3_net_1));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_1 (.A(
        \cache1[1]_net_1 ), .B(ControlDecoder_0_threshold_voltage_1[0])
        , .C(ControlDecoder_0_threshold_voltage_1[1]), .D(
        \cache1[0]_net_1 ), .FCI(GND_net_1), .S(), .Y(), .FCO(
        \un3_sclockv_0_data_tmp[0] ));
    CFG2 #( .INIT(4'h8) )  un1_sclock_counter15_5 (.A(
        sclock_counter15_net_1), .B(un1_sync_barv_0_sqmuxa_net_1), .Y(
        un1_sclock_counter15_5_net_1));
    CFG4 #( .INIT(16'h4000) )  dataready_2_sqmuxa (.A(dac_sclk_1_c), 
        .B(un33_sclockv_net_1), .C(\temp_m_2[15] ), .D(
        sclock_counter15_net_1), .Y(dataready_2_sqmuxa_net_1));
    CFG3 #( .INIT(8'hD8) )  \temp_14[4]  (.A(dataready_net_1), .B(
        \temp_7[3] ), .C(\temp[3]_net_1 ), .Y(\temp_14[4]_net_1 ));
    SLE \cache1[11]  (.D(ControlDecoder_0_threshold_voltage_1[11]), 
        .CLK(clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\cache1[11]_net_1 ));
    SLE \sclock_counter[20]  (.D(\sclock_counter_s[20] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[20]_net_1 ));
    SLE \sclock_counter[18]  (.D(\sclock_counter_s[18] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[18]_net_1 ));
    ARI1 #( .INIT(20'h555FF) )  temp_7_cry_9 (.A(
        ControlDecoder_0_threshold_voltage_1[9]), .B(temp_7), .C(
        GND_net_1), .D(GND_net_1), .FCI(temp_7_cry_8_net_1), .S(
        \temp_7[9] ), .Y(), .FCO(temp_7_cry_9_net_1));
    CFG3 #( .INIT(8'hD8) )  \temp_14[6]  (.A(dataready_net_1), .B(
        \temp_7[5] ), .C(\temp[5]_net_1 ), .Y(\temp_14[6]_net_1 ));
    CFG3 #( .INIT(8'h6A) )  \un1_index_1.SUM[2]  (.A(\index[2]_net_1 ), 
        .B(\index[1]_net_1 ), .C(\index[0]_net_1 ), .Y(N_162));
    CFG2 #( .INIT(4'h1) )  \index_7[0]  (.A(index_2_sqmuxa_1_net_1), 
        .B(\index[0]_net_1 ), .Y(\index_7[0]_net_1 ));
    SLE \cache1[10]  (.D(ControlDecoder_0_threshold_voltage_1[10]), 
        .CLK(clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\cache1[10]_net_1 ));
    CFG4 #( .INIT(16'h0001) )  un2_sclock_counterlto9 (.A(
        \sclock_counter[25]_net_1 ), .B(\sclock_counter[24]_net_1 ), 
        .C(\sclock_counter[23]_net_1 ), .D(\sclock_counter[22]_net_1 ), 
        .Y(un2_sclock_counterlt12));
    CFG2 #( .INIT(4'h2) )  un33_sclockv_1 (.A(\index[4]_net_1 ), .B(
        \index[2]_net_1 ), .Y(un33_sclockv_1_net_1));
    CFG2 #( .INIT(4'h6) )  sequence_1 (.A(temp_1_sqmuxa_2_net_1), .B(
        temp_7), .Y(sequence_1_net_1));
    SLE \cache1[0]  (.D(ControlDecoder_0_threshold_voltage_1[0]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[0]_net_1 ));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_39 (.A(
        \cache1[9]_net_1 ), .B(ControlDecoder_0_threshold_voltage_1[8])
        , .C(ControlDecoder_0_threshold_voltage_1[9]), .D(
        \cache1[8]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[3] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[4] ));
    ARI1 #( .INIT(20'h48800) )  temp_7_cry_4 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[4]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_3_net_1), .S(\temp_7[4] ), .Y(), 
        .FCO(temp_7_cry_4_net_1));
    SLE sclockv (.D(sclock_counter15_net_1), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac_sclk_1_c));
    CFG3 #( .INIT(8'hD8) )  \temp_14[8]  (.A(dataready_net_1), .B(
        \temp_7[7] ), .C(\temp[7]_net_1 ), .Y(\temp_14[8]_net_1 ));
    CFG4 #( .INIT(16'h555D) )  un2_sclock_counter_1lto14 (.A(
        \sclock_counter[17]_net_1 ), .B(un2_sclock_counter_1lt13), .C(
        \sclock_counter[19]_net_1 ), .D(\sclock_counter[18]_net_1 ), 
        .Y(un2_sclock_counter_1lt15));
    CFG3 #( .INIT(8'hB3) )  un2_sclock_counterlto14_0_RNIHEEA (.A(
        un2_sclock_counterlt14), .B(\sclock_counter[16]_net_1 ), .C(
        un2_sclock_counterlto14_0_net_1), .Y(un2_sclock_counter_i_0_i));
    CFG4 #( .INIT(16'h0004) )  un33_sclockv (.A(\index[0]_net_1 ), .B(
        un33_sclockv_1_net_1), .C(\index[3]_net_1 ), .D(
        \index[1]_net_1 ), .Y(un33_sclockv_net_1));
    SLE \cache1[2]  (.D(ControlDecoder_0_threshold_voltage_1[2]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[2]_net_1 ));
    SLE \temp[6]  (.D(\temp_14[6]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[6]_net_1 ));
    SLE \index[0]  (.D(\index_7[0]_net_1 ), .CLK(clk_c), .EN(
        un1_sclock_counter15_1_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \index[0]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[26]  (.A(VCC_net_1)
        , .B(\sclock_counter[26]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[27]_net_1 ), .S(
        \sclock_counter_s[26] ), .Y(), .FCO(
        \sclock_counter_cry[26]_net_1 ));
    CFG1 #( .INIT(2'h1) )  dataready_RNO (.A(dataready_net_1), .Y(
        dataready_i_0));
    SLE \sclock_counter[30]  (.D(\sclock_counter_s[30] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[30]_net_1 ));
    SLE \cache1[9]  (.D(ControlDecoder_0_threshold_voltage_1[9]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[9]_net_1 ));
    CFG4 #( .INIT(16'h0001) )  un2_sclock_counter_1lto8 (.A(
        \sclock_counter[26]_net_1 ), .B(\sclock_counter[25]_net_1 ), 
        .C(\sclock_counter[24]_net_1 ), .D(\sclock_counter[23]_net_1 ), 
        .Y(un2_sclock_counter_1lt11));
    SLE \index[2]  (.D(N_162), .CLK(clk_c), .EN(
        un1_sclock_counter15_1_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \index[2]_net_1 ));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_21 (.A(
        \cache1[3]_net_1 ), .B(ControlDecoder_0_threshold_voltage_1[2])
        , .C(ControlDecoder_0_threshold_voltage_1[3]), .D(
        \cache1[2]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[0] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[1] ));
    CFG2 #( .INIT(4'h4) )  index_2_sqmuxa_1 (.A(dataready_net_1), .B(
        \index[4]_net_1 ), .Y(index_2_sqmuxa_1_net_1));
    SLE sync_barv (.D(temp_0_sqmuxa_i_0), .CLK(clk_c), .EN(
        un1_sclock_counter15_5_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1)
        , .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        dac_sync_1_c));
    CFG3 #( .INIT(8'h80) )  \un1_index_1.CO2  (.A(\index[2]_net_1 ), 
        .B(\index[1]_net_1 ), .C(\index[0]_net_1 ), .Y(CO2));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_33 (.A(
        \cache1[7]_net_1 ), .B(ControlDecoder_0_threshold_voltage_1[6])
        , .C(ControlDecoder_0_threshold_voltage_1[7]), .D(
        \cache1[6]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[2] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[3] ));
    CFG3 #( .INIT(8'h40) )  un1_sclock_counter15_3 (.A(dac_sclk_1_c), 
        .B(un1_dinv_2_sqmuxa_net_1), .C(sclock_counter15_net_1), .Y(
        un1_sclock_counter15_3_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_s[16]  (.A(VCC_net_1), 
        .B(\sclock_counter[16]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[17]_net_1 ), .S(
        \sclock_counter_s[16]_net_1 ), .Y(), .FCO());
    SLE \sclock_counter[17]  (.D(\sclock_counter_s[17] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[17]_net_1 ));
    CFG2 #( .INIT(4'h4) )  \temp_14[15]  (.A(dataready_net_1), .B(
        \temp[14]_net_1 ), .Y(\temp_14[15]_net_1 ));
    ARI1 #( .INIT(20'h48800) )  temp_7_cry_8 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[8]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_7_net_1), .S(\temp_7[8] ), .Y(), 
        .FCO(temp_7_cry_8_net_1));
    SLE \sclock_counter[21]  (.D(\sclock_counter_s[21] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[21]_net_1 ));
    SLE \index[4]  (.D(\index_7[4]_net_1 ), .CLK(clk_c), .EN(
        un1_sclock_counter15_1_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \index[4]_net_1 ));
    SLE \sequence[1]  (.D(N_152_i), .CLK(clk_c), .EN(
        temp_1_sqmuxa_2_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sequence[1]_net_1 ));
    CFG4 #( .INIT(16'hA303) )  sclock_counter15 (.A(
        un2_sclock_counterlt14), .B(un2_sclock_counter_1lt15), .C(
        \sclock_counter[16]_net_1 ), .D(
        un2_sclock_counterlto14_0_net_1), .Y(sclock_counter15_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[17]  (.A(VCC_net_1)
        , .B(\sclock_counter[17]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[18]_net_1 ), .S(
        \sclock_counter_s[17] ), .Y(), .FCO(
        \sclock_counter_cry[17]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[7]  (.A(dataready_net_1), .B(
        \temp_7[6] ), .C(\temp[6]_net_1 ), .Y(\temp_14[7]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[24]  (.A(VCC_net_1)
        , .B(\sclock_counter[24]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[25]_net_1 ), .S(
        \sclock_counter_s[24] ), .Y(), .FCO(
        \sclock_counter_cry[24]_net_1 ));
    SLE \cache1[8]  (.D(ControlDecoder_0_threshold_voltage_1[8]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[8]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[12]  (.A(dataready_net_1), .B(
        \temp_7[11] ), .C(\temp[11]_net_1 ), .Y(\temp_14[12]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[19]  (.A(VCC_net_1)
        , .B(\sclock_counter[19]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[20]_net_1 ), .S(
        \sclock_counter_s[19] ), .Y(), .FCO(
        \sclock_counter_cry[19]_net_1 ));
    CFG4 #( .INIT(16'hF7F5) )  un1_sclockv_2 (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(un33_sclockv_net_1), .C(
        dac_sclk_1_c), .D(index_2_sqmuxa_1_net_1), .Y(
        un1_sclockv_2_net_1));
    CFG3 #( .INIT(8'hC8) )  un1_dinv_2_sqmuxa (.A(dataready_net_1), .B(
        \un3_sclockv_0_data_tmp[6] ), .C(un33_sclockv_net_1), .Y(
        un1_dinv_2_sqmuxa_net_1));
    ARI1 #( .INIT(20'h555FF) )  temp_7_cry_1 (.A(
        ControlDecoder_0_threshold_voltage_1[1]), .B(temp_7), .C(
        GND_net_1), .D(GND_net_1), .FCI(GND_net_1), .S(), .Y(
        temp_7_cry_1_Y), .FCO(temp_7_cry_1_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[20]  (.A(VCC_net_1)
        , .B(\sclock_counter[20]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[21]_net_1 ), .S(
        \sclock_counter_s[20] ), .Y(), .FCO(
        \sclock_counter_cry[20]_net_1 ));
    SLE \index[3]  (.D(N_163), .CLK(clk_c), .EN(
        un1_sclock_counter15_1_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \index[3]_net_1 ));
    SLE \temp[9]  (.D(\temp_14[9]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[9]_net_1 ));
    SLE \sequence[0]  (.D(sequence_1_net_1), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(temp_7));
    SLE \cache1[13]  (.D(ControlDecoder_0_threshold_voltage_1[13]), 
        .CLK(clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\cache1[13]_net_1 ));
    SLE \sclock_counter[23]  (.D(\sclock_counter_s[23] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[23]_net_1 ));
    SLE \temp[1]  (.D(\temp_14[1]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[1]_net_1 ));
    SLE \sclock_counter[26]  (.D(\sclock_counter_s[26] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[26]_net_1 ));
    CFG2 #( .INIT(4'h4) )  ldac_barv_2_sqmuxa_0 (.A(dataready_net_1), 
        .B(\index[0]_net_1 ), .Y(ldac_barv_2_sqmuxa_0_net_1));
    SLE \temp[14]  (.D(\temp_14[14]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[14]_net_1 ));
    SLE \temp[5]  (.D(\temp_14[5]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[5]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[23]  (.A(VCC_net_1)
        , .B(\sclock_counter[23]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[24]_net_1 ), .S(
        \sclock_counter_s[23] ), .Y(), .FCO(
        \sclock_counter_cry[23]_net_1 ));
    CFG1 #( .INIT(2'h1) )  ldac_barv_RNO (.A(
        \un3_sclockv_0_data_tmp[6] ), .Y(
        \un3_sclockv_0_data_tmp_i_0[6] ));
    SLE \temp[3]  (.D(\temp_14[3]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[3]_net_1 ));
    SLE \sclock_counter[31]  (.D(\sclock_counter_s[31] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[31]_net_1 ));
    SLE \sclock_counter[29]  (.D(\sclock_counter_s[29] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[29]_net_1 ));
    SLE \temp[2]  (.D(\temp_14[2]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[2]_net_1 ));
    SLE \sclock_counter[25]  (.D(\sclock_counter_s[25] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[25]_net_1 ));
    CFG3 #( .INIT(8'h10) )  dinv_6_iv_RNO (.A(\index[4]_net_1 ), .B(
        dac_sclk_1_c), .C(\temp[15]_net_1 ), .Y(\temp_m_1[15] ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[21]  (.A(VCC_net_1)
        , .B(\sclock_counter[21]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[22]_net_1 ), .S(
        \sclock_counter_s[21] ), .Y(), .FCO(
        \sclock_counter_cry[21]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[3]  (.A(dataready_net_1), .B(
        \temp_7[2] ), .C(\temp[2]_net_1 ), .Y(\temp_14[3]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[18]  (.A(VCC_net_1)
        , .B(\sclock_counter[18]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[19]_net_1 ), .S(
        \sclock_counter_s[18] ), .Y(), .FCO(
        \sclock_counter_cry[18]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  sclock_counter_s_765 (.A(VCC_net_1), 
        .B(\sclock_counter[31]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(VCC_net_1), .S(), .Y(), .FCO(sclock_counter_s_765_FCO));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_27 (.A(
        \cache1[5]_net_1 ), .B(ControlDecoder_0_threshold_voltage_1[4])
        , .C(ControlDecoder_0_threshold_voltage_1[5]), .D(
        \cache1[4]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[1] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[2] ));
    ARI1 #( .INIT(20'h68421) )  un3_sclockv_0_I_15 (.A(
        \cache1[13]_net_1 ), .B(
        ControlDecoder_0_threshold_voltage_1[12]), .C(
        ControlDecoder_0_threshold_voltage_1[13]), .D(
        \cache1[12]_net_1 ), .FCI(\un3_sclockv_0_data_tmp[5] ), .S(), 
        .Y(), .FCO(\un3_sclockv_0_data_tmp[6] ));
    ARI1 #( .INIT(20'h4AA00) )  \sclock_counter_cry[22]  (.A(VCC_net_1)
        , .B(\sclock_counter[22]_net_1 ), .C(GND_net_1), .D(GND_net_1), 
        .FCI(\sclock_counter_cry[23]_net_1 ), .S(
        \sclock_counter_s[22] ), .Y(), .FCO(
        \sclock_counter_cry[22]_net_1 ));
    SLE \cache1[1]  (.D(ControlDecoder_0_threshold_voltage_1[1]), .CLK(
        clk_c), .EN(dataready_2_sqmuxa_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cache1[1]_net_1 ));
    SLE \sclock_counter[22]  (.D(\sclock_counter_s[22] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        un2_sclock_counter_i_0_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \sclock_counter[22]_net_1 ));
    SLE \temp[13]  (.D(\temp_14[13]_net_1 ), .CLK(clk_c), .EN(
        index_1_sqmuxa_1_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \temp[13]_net_1 ));
    SLE ldac_barv (.D(\un3_sclockv_0_data_tmp_i_0[6] ), .CLK(clk_c), 
        .EN(un1_sclock_counter15_4_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(dac_ldac_1_c));
    ARI1 #( .INIT(20'h48800) )  temp_7_cry_3 (.A(VCC_net_1), .B(
        ControlDecoder_0_threshold_voltage_1[3]), .C(temp_7), .D(
        GND_net_1), .FCI(temp_7_cry_2_net_1), .S(\temp_7[3] ), .Y(), 
        .FCO(temp_7_cry_3_net_1));
    CFG4 #( .INIT(16'hEAC0) )  dinv_6_iv (.A(\temp_m_2[15] ), .B(
        un1_sclockv_2_net_1), .C(dac_din_1_c), .D(\temp_m_1[15] ), .Y(
        dinv_6));
    CFG2 #( .INIT(4'h2) )  un1_sclockv_2_RNIFS2R (.A(
        sclock_counter15_net_1), .B(un1_sclockv_2_net_1), .Y(
        un1_sclock_counter15_1_i_0));
    CFG4 #( .INIT(16'h0008) )  index_1_sqmuxa_1 (.A(
        \un3_sclockv_0_data_tmp[6] ), .B(sclock_counter15_net_1), .C(
        dac_sclk_1_c), .D(index_2_sqmuxa_1_net_1), .Y(
        index_1_sqmuxa_1_net_1));
    CFG4 #( .INIT(16'hDFFF) )  un2_sclock_counter_1lto11 (.A(
        \sclock_counter[20]_net_1 ), .B(un2_sclock_counter_1lt11), .C(
        \sclock_counter[22]_net_1 ), .D(\sclock_counter[21]_net_1 ), 
        .Y(un2_sclock_counter_1lt13));
    CFG3 #( .INIT(8'hD8) )  \temp_14[5]  (.A(dataready_net_1), .B(
        \temp_7[4] ), .C(\temp[4]_net_1 ), .Y(\temp_14[5]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \temp_14[9]  (.A(dataready_net_1), .B(
        \temp_7[8] ), .C(\temp[8]_net_1 ), .Y(\temp_14[9]_net_1 ));
    SLE \index[1]  (.D(N_161), .CLK(clk_c), .EN(
        un1_sclock_counter15_1_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \index[1]_net_1 ));
    
endmodule


module JTAG_0(
       hptdc_tms_2_c,
       clk_c_i_0,
       rst_c_i_0,
       hptdc_tdo_2_c,
       rst_c
    );
output hptdc_tms_2_c;
input  clk_c_i_0;
input  rst_c_i_0;
output hptdc_tdo_2_c;
input  rst_c;

    wire VCC_net_1, tms_pad_o_RNO_net_1, GND_net_1, 
        \TAP_state[0]_net_1 , N_1576_i_0, \TAP_state[1]_net_1 , 
        N_1577_i_0, \TAP_state[2]_net_1 , \TAP_state_RNO_0[2] , 
        \TAP_state[3]_net_1 , N_1579_i_0, \loop_counter[0]_net_1 , 
        \loop_counter_RNO_2[0] , \loop_counter[1]_net_1 , 
        \loop_counter_RNO_2[1] , \loop_counter[2]_net_1 , 
        \loop_counter_RNO_2[2] , N_7_i_0, \next_TAP_state[9]_net_1 , 
        \next_TAP_state_nss[9] , \next_TAP_state[10]_net_1 , 
        \next_TAP_state_nss[10] , \next_TAP_state_i[0]_net_1 , 
        N_3645_i_0, \next_TAP_state[1]_net_1 , 
        \next_TAP_state_RNO_0[1] , \next_TAP_state[2]_net_1 , 
        \next_TAP_state_RNO_0[2] , \next_TAP_state[3]_net_1 , 
        \next_TAP_state_nss[3] , \next_TAP_state[4]_net_1 , 
        \next_TAP_state_nss[4] , \next_TAP_state[5]_net_1 , 
        \next_TAP_state_RNO_0[5] , \next_TAP_state[6]_net_1 , 
        \next_TAP_state_RNO[6]_net_1 , \next_TAP_state[7]_net_1 , 
        \next_TAP_state_nss[7] , \next_TAP_state[8]_net_1 , N_1580_i_0, 
        ir_loop_net_1, N_1581_i_0, m46_ns_1, N_3646, m43_ns_1, 
        m39_ns_1, m10_1, N_3636, N_3637, N_3642, N_3638, N_3677;
    
    SLE tdo_pad_o (.D(\TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_7_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(hptdc_tdo_2_c));
    CFG4 #( .INIT(16'h2250) )  \loop_counter_RNO[1]  (.A(
        \next_TAP_state[7]_net_1 ), .B(rst_c), .C(N_3646), .D(m43_ns_1)
        , .Y(\loop_counter_RNO_2[1] ));
    CFG4 #( .INIT(16'hFFEF) )  \TAP_state_RNO[1]  (.A(
        \next_TAP_state[1]_net_1 ), .B(\next_TAP_state[4]_net_1 ), .C(
        N_3637), .D(\next_TAP_state[7]_net_1 ), .Y(N_1577_i_0));
    CFG2 #( .INIT(4'hE) )  \next_TAP_state_RNO[8]  (.A(
        \next_TAP_state[8]_net_1 ), .B(rst_c), .Y(N_1580_i_0));
    SLE \next_TAP_state[8]  (.D(N_1580_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[8]_net_1 ));
    CFG4 #( .INIT(16'hFFBF) )  \TAP_state_RNO[0]  (.A(
        \next_TAP_state[5]_net_1 ), .B(N_3636), .C(
        \next_TAP_state_i[0]_net_1 ), .D(\next_TAP_state[6]_net_1 ), 
        .Y(N_1576_i_0));
    CFG2 #( .INIT(4'h1) )  \TAP_state_RNO_0[3]  (.A(
        \next_TAP_state[10]_net_1 ), .B(\next_TAP_state[6]_net_1 ), .Y(
        m10_1));
    SLE \TAP_state[2]  (.D(\TAP_state_RNO_0[2] ), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[2]_net_1 ));
    SLE \loop_counter[0]  (.D(\loop_counter_RNO_2[0] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[0]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNICTE3[3]  (.A(
        \next_TAP_state[3]_net_1 ), .B(\next_TAP_state[9]_net_1 ), .Y(
        N_3636));
    CFG2 #( .INIT(4'h1) )  \TAP_state_RNO_0[1]  (.A(
        \next_TAP_state[5]_net_1 ), .B(\next_TAP_state[10]_net_1 ), .Y(
        N_3637));
    SLE \TAP_state[0]  (.D(N_1576_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[0]_net_1 ));
    CFG3 #( .INIT(8'hFE) )  ir_loop_RNO (.A(rst_c), .B(
        \next_TAP_state[9]_net_1 ), .C(\next_TAP_state[3]_net_1 ), .Y(
        N_1581_i_0));
    CFG4 #( .INIT(16'h043B) )  \loop_counter_RNO_0[1]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        m43_ns_1));
    CFG3 #( .INIT(8'h32) )  \next_TAP_state_RNO[7]  (.A(N_3677), .B(
        rst_c), .C(\next_TAP_state[10]_net_1 ), .Y(
        \next_TAP_state_nss[7] ));
    SLE \loop_counter[2]  (.D(\loop_counter_RNO_2[2] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[2]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[9]  (.A(
        \next_TAP_state[6]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[9] ));
    CFG4 #( .INIT(16'h0C4C) )  \loop_counter_RNIC5S5[0]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_3677));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[1]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_RNO_0[1] ));
    CFG3 #( .INIT(8'h20) )  \next_TAP_state_RNO[2]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_RNO_0[2] ));
    CFG4 #( .INIT(16'h2250) )  \loop_counter_RNO[2]  (.A(
        \next_TAP_state[7]_net_1 ), .B(rst_c), .C(N_3646), .D(m39_ns_1)
        , .Y(\loop_counter_RNO_2[2] ));
    CFG4 #( .INIT(16'h0010) )  tms_pad_o_RNO (.A(
        \next_TAP_state[2]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        N_3638), .D(N_3677), .Y(tms_pad_o_RNO_net_1));
    CFG4 #( .INIT(16'hFEFF) )  \TAP_state_RNO[3]  (.A(
        \next_TAP_state[9]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        \next_TAP_state[7]_net_1 ), .D(m10_1), .Y(N_1579_i_0));
    SLE \next_TAP_state[7]  (.D(\next_TAP_state_nss[7] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[7]_net_1 ));
    CFG4 #( .INIT(16'h0001) )  \next_TAP_state_RNI445I[4]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(
        \next_TAP_state[10]_net_1 ), .D(\next_TAP_state[1]_net_1 ), .Y(
        N_3646));
    CFG3 #( .INIT(8'h0D) )  tms_pad_o_RNO_0 (.A(
        \next_TAP_state[5]_net_1 ), .B(ir_loop_net_1), .C(
        \next_TAP_state[10]_net_1 ), .Y(N_3638));
    SLE \next_TAP_state_i[0]  (.D(N_3645_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state_i[0]_net_1 ));
    SLE \next_TAP_state[5]  (.D(\next_TAP_state_RNO_0[5] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[5]_net_1 ));
    SLE \next_TAP_state[2]  (.D(\next_TAP_state_RNO_0[2] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[2]_net_1 ));
    GND GND (.Y(GND_net_1));
    SLE \next_TAP_state[9]  (.D(\next_TAP_state_nss[9] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[9]_net_1 ));
    SLE \next_TAP_state[3]  (.D(\next_TAP_state_nss[3] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[3]_net_1 ));
    CFG4 #( .INIT(16'h0B43) )  \loop_counter_RNO_0[2]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        m39_ns_1));
    CFG4 #( .INIT(16'h6240) )  \loop_counter_RNO[0]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        m46_ns_1), .D(N_3646), .Y(\loop_counter_RNO_2[0] ));
    CFG3 #( .INIT(8'h54) )  \next_TAP_state_RNO_0[6]  (.A(rst_c), .B(
        \loop_counter[1]_net_1 ), .C(\loop_counter[0]_net_1 ), .Y(
        N_3642));
    CFG3 #( .INIT(8'h80) )  \next_TAP_state_RNO[6]  (.A(
        \loop_counter[2]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        N_3642), .Y(\next_TAP_state_RNO[6]_net_1 ));
    CFG4 #( .INIT(16'h0004) )  \TAP_state_RNO[2]  (.A(
        \next_TAP_state[6]_net_1 ), .B(\next_TAP_state_i[0]_net_1 ), 
        .C(\next_TAP_state[7]_net_1 ), .D(\next_TAP_state[1]_net_1 ), 
        .Y(\TAP_state_RNO_0[2] ));
    SLE \loop_counter[1]  (.D(\loop_counter_RNO_2[1] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[1]_net_1 ));
    SLE \next_TAP_state[1]  (.D(\next_TAP_state_RNO_0[1] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[1]_net_1 ));
    SLE ir_loop (.D(\next_TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_1581_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(ir_loop_net_1));
    SLE \TAP_state[1]  (.D(N_1577_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[1]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \next_TAP_state_i_RNO[0]  (.A(
        \next_TAP_state[1]_net_1 ), .B(rst_c), .Y(N_3645_i_0));
    SLE \next_TAP_state[6]  (.D(\next_TAP_state_RNO[6]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[6]_net_1 ));
    SLE tms_pad_o (.D(tms_pad_o_RNO_net_1), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(hptdc_tms_2_c));
    CFG3 #( .INIT(8'h04) )  tdo_pad_o_RNO (.A(\TAP_state[2]_net_1 ), 
        .B(\TAP_state[1]_net_1 ), .C(\TAP_state[0]_net_1 ), .Y(N_7_i_0)
        );
    SLE \next_TAP_state[10]  (.D(\next_TAP_state_nss[10] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[10]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[3]  (.A(
        \next_TAP_state_i[0]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[3] ));
    SLE \next_TAP_state[4]  (.D(\next_TAP_state_nss[4] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[4]_net_1 ));
    CFG3 #( .INIT(8'h15) )  \loop_counter_RNO_0[0]  (.A(rst_c), .B(
        \loop_counter[2]_net_1 ), .C(\loop_counter[1]_net_1 ), .Y(
        m46_ns_1));
    SLE \TAP_state[3]  (.D(N_1579_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[3]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[5]  (.A(N_3636), .B(
        rst_c), .Y(\next_TAP_state_RNO_0[5] ));
    CFG3 #( .INIT(8'h02) )  \next_TAP_state_RNO[4]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_nss[4] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[10]  (.A(
        \next_TAP_state[2]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[10] ));
    
endmodule


module JTAG_3(
       ControlDecoder_0_data_to_hptdc_0,
       ControlDecoder_0_jtag_instruction_0,
       hptdc_tms_0_c,
       clk_c_i_0,
       rst_c_i_0,
       ControlDecoder_0_send_data_to_hptdc_0,
       JTAG_0_data_received_from_hptdc,
       hptdc_tdo_0_c,
       hptdc_trstn_3_c,
       hptdc_tdi_0_c,
       JTAG_0_jtag_bus_in_use,
       rst_c,
       ControlDecoder_0_get_data_from_hptdc_0,
       lathed_data_from_hptdc_024,
       N_3881_i_0,
       N_3880_i_0
    );
input  [7:0] ControlDecoder_0_data_to_hptdc_0;
input  [1:0] ControlDecoder_0_jtag_instruction_0;
output hptdc_tms_0_c;
input  clk_c_i_0;
input  rst_c_i_0;
input  ControlDecoder_0_send_data_to_hptdc_0;
output JTAG_0_data_received_from_hptdc;
output hptdc_tdo_0_c;
output hptdc_trstn_3_c;
input  hptdc_tdi_0_c;
output JTAG_0_jtag_bus_in_use;
input  rst_c;
input  ControlDecoder_0_get_data_from_hptdc_0;
input  lathed_data_from_hptdc_024;
output N_3881_i_0;
output N_3880_i_0;

    wire N_310, N_310_i, VCC_net_1, N_3025_i_0, GND_net_1, 
        \TAP_state[0]_net_1 , N_1949_i_0, \TAP_state[1]_net_1 , 
        N_1950_i_0, \TAP_state[2]_net_1 , 
        \un1_data_sent_to_hptdc_a2_0_a2_1_a2[2]_net_1 , 
        \TAP_state[3]_net_1 , N_1952_i_0, \data_to[2]_net_1 , 
        data_to_1_sqmuxa, \data_to[3]_net_1 , \data_to_ldmx[3]_net_1 , 
        \data_to[4]_net_1 , \data_to_ldmx[4]_net_1 , 
        \data_to[5]_net_1 , \data_to_ldmx[5]_net_1 , 
        \data_to[6]_net_1 , \data_to_ldmx[6]_net_1 , 
        \data_to[7]_net_1 , \data_to_ldmx[7]_net_1 , 
        \data_to[0]_net_1 , \data_to_ldmx[0]_net_1 , 
        \data_to[1]_net_1 , \data_to_ldmx[1]_net_1 , 
        \loop_counter[0]_net_1 , \loop_counter_0_0_0[0]_net_1 , 
        \loop_counter[1]_net_1 , \loop_counter_0_0_0[1]_net_1 , 
        \loop_counter[2]_net_1 , \loop_counter_0_0_0[2]_net_1 , 
        data_length_net_1, data_length_ldmx_net_1, N_3926, 
        get_data_net_1, N_3753_i_0, N_3752_i_0, tdo_pad_o_1_net_1, 
        \next_TAP_state[1]_net_1 , \next_TAP_state_nss[1] , 
        \next_TAP_state[2]_net_1 , \next_TAP_state_nss[2] , 
        \next_TAP_state[3]_net_1 , \next_TAP_state_nss[3] , 
        \next_TAP_state[4]_net_1 , \next_TAP_state_nss[4] , 
        \next_TAP_state[5]_net_1 , N_1916_i_0, 
        \next_TAP_state[6]_net_1 , N_1914_i_0, 
        \next_TAP_state[7]_net_1 , \next_TAP_state_nss[7] , 
        \next_TAP_state[8]_net_1 , \next_TAP_state_nss[8] , 
        \next_TAP_state[9]_net_1 , \next_TAP_state_nss[9] , 
        \next_TAP_state[10]_net_1 , \next_TAP_state_nss[10] , 
        \next_TAP_state_i[0]_net_1 , \next_TAP_state_nss_i[0] , 
        ir_loop_net_1, N_1958_i_0, \JTAG_0_data_from_hptdc[1] , 
        \data_from_hptdc_1_RNO[1]_net_1 , 
        \data_from_hptdc_1ce[1]_net_1 , \JTAG_0_data_from_hptdc[0] , 
        \data_from_hptdc_1_RNO[0]_net_1 , 
        \data_from_hptdc_1ce[0]_net_1 , jtag_bus_in_use_net_1, N_455, 
        un1_tdo_pad_o_1_sqmuxa_or, 
        data_from_hptdc_1_sqmuxa_1_i_0_net_1, 
        tdo_pad_o_2_7_i_m2_i_m2_am_1_1_net_1, 
        tdo_pad_o_2_7_i_m2_i_m2_am_net_1, 
        tdo_pad_o_2_7_i_m2_i_m2_bm_1_1_net_1, 
        tdo_pad_o_2_7_i_m2_i_m2_bm_net_1, N_236, 
        \un1_data_sent_to_hptdc_i_a2_0_a2_0_a2_1[3]_net_1 , 
        \data_to_en[0]_net_1 , N_471, N_475, N_3935, N_431, N_302, 
        N_305, N_454, \loop_counter_0_0_0_0[2]_net_1 , N_304, N_486, 
        tms_pad_o_6_i_0_0_1_net_1;
    
    CFG4 #( .INIT(16'h0F53) )  tdo_pad_o_2_7_i_m2_i_m2_am_1_1 (.A(
        \data_to[2]_net_1 ), .B(\data_to[0]_net_1 ), .C(
        \loop_counter[1]_net_1 ), .D(\loop_counter[0]_net_1 ), .Y(
        tdo_pad_o_2_7_i_m2_i_m2_am_1_1_net_1));
    SLE tdo_pad_o (.D(tdo_pad_o_1_net_1), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(hptdc_tdo_0_c));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[6]  (.A(rst_c), .B(
        \data_to[6]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[6]), .Y(
        \data_to_ldmx[6]_net_1 ));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[0]  (.A(rst_c), .B(
        \data_to[0]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[0]), .Y(
        \data_to_ldmx[0]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \TAP_state_RNO[1]  (.A(N_431), .B(
        \next_TAP_state[5]_net_1 ), .Y(N_1950_i_0));
    SLE jtag_bus_in_use (.D(jtag_bus_in_use_net_1), .CLK(clk_c_i_0), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        JTAG_0_jtag_bus_in_use));
    SLE get_data (.D(N_3753_i_0), .CLK(clk_c_i_0), .EN(rst_c_i_0), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(get_data_net_1));
    SLE \next_TAP_state[8]  (.D(\next_TAP_state_nss[8] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[8]_net_1 ));
    CFG4 #( .INIT(16'hFFBF) )  \TAP_state_RNO[0]  (.A(
        \next_TAP_state[5]_net_1 ), .B(N_471), .C(
        \next_TAP_state_i[0]_net_1 ), .D(\next_TAP_state[6]_net_1 ), 
        .Y(N_1949_i_0));
    SLE \data_to[6]  (.D(\data_to_ldmx[6]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[6]_net_1 ));
    SLE \TAP_state[2]  (.D(
        \un1_data_sent_to_hptdc_a2_0_a2_1_a2[2]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(rst_c_i_0), .SD(VCC_net_1), .LAT(GND_net_1), .Q(
        \TAP_state[2]_net_1 ));
    CFG4 #( .INIT(16'h0210) )  \loop_counter_0_0_0_0[2]  (.A(
        \loop_counter[0]_net_1 ), .B(N_3935), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        \loop_counter_0_0_0_0[2]_net_1 ));
    SLE \loop_counter[0]  (.D(\loop_counter_0_0_0[0]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[0]_net_1 ));
    SLE data_received_from_hptdc (.D(N_3752_i_0), .CLK(clk_c_i_0), .EN(
        rst_c_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(
        JTAG_0_data_received_from_hptdc));
    CFG3 #( .INIT(8'hEF) )  \next_TAP_state_nss_i_0_0_0[0]  (.A(N_455), 
        .B(rst_c), .C(\next_TAP_state[1]_net_1 ), .Y(
        \next_TAP_state_nss_i[0] ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_srsts_0_a2_0_a2_0_a2[3]  (
        .A(\next_TAP_state_i[0]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[3] ));
    SLE \data_to[0]  (.D(\data_to_ldmx[0]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[0]_net_1 ));
    SLE \TAP_state[0]  (.D(N_1949_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[0]_net_1 ));
    CFG3 #( .INIT(8'hFE) )  ir_loop_RNO (.A(rst_c), .B(
        \next_TAP_state[9]_net_1 ), .C(\next_TAP_state[3]_net_1 ), .Y(
        N_1958_i_0));
    CFG2 #( .INIT(4'h8) )  tms_pad_o_6_i_0_0_a2_2 (.A(N_455), .B(
        \next_TAP_state[1]_net_1 ), .Y(N_486));
    SLE \loop_counter[2]  (.D(\loop_counter_0_0_0[2]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[2]_net_1 ));
    CFG4 #( .INIT(16'hFFAE) )  \loop_counter_0_0_0[0]  (.A(N_304), .B(
        N_486), .C(rst_c), .D(N_302), .Y(\loop_counter_0_0_0[0]_net_1 )
        );
    CFG2 #( .INIT(4'h2) )  \data_from_hptdc_5_i_0_a2[0]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .Y(N_310));
    VCC VCC (.Y(VCC_net_1));
    CFG2 #( .INIT(4'hE) )  \data_from_hptdc_1_RNO[0]  (.A(
        \data_from_hptdc_1ce[0]_net_1 ), .B(N_310), .Y(
        \data_from_hptdc_1_RNO[0]_net_1 ));
    CFG4 #( .INIT(16'h0010) )  \next_TAP_state_nss_i_0_0_0_a2[0]  (.A(
        \loop_counter[1]_net_1 ), .B(\loop_counter[0]_net_1 ), .C(
        data_length_net_1), .D(\loop_counter[2]_net_1 ), .Y(N_455));
    CFG2 #( .INIT(4'hD) )  \next_TAP_state_srsts_i_0_0_o2_0[6]  (.A(
        \next_TAP_state[7]_net_1 ), .B(rst_c), .Y(N_3935));
    CFG4 #( .INIT(16'hCCCE) )  \next_TAP_state_srsts_0_0_0[8]  (.A(
        \next_TAP_state[8]_net_1 ), .B(rst_c), .C(
        ControlDecoder_0_send_data_to_hptdc_0), .D(
        ControlDecoder_0_get_data_from_hptdc_0), .Y(
        \next_TAP_state_nss[8] ));
    SLE \data_to[3]  (.D(\data_to_ldmx[3]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[3]_net_1 ));
    CFG4 #( .INIT(16'h0301) )  tms_pad_o_RNO (.A(
        \next_TAP_state[8]_net_1 ), .B(N_486), .C(
        tms_pad_o_6_i_0_0_1_net_1), .D(N_3926), .Y(N_3025_i_0));
    CFG4 #( .INIT(16'hFFFB) )  \TAP_state_RNO[3]  (.A(
        \next_TAP_state[8]_net_1 ), .B(
        \un1_data_sent_to_hptdc_i_a2_0_a2_0_a2_1[3]_net_1 ), .C(
        \next_TAP_state[9]_net_1 ), .D(\next_TAP_state[10]_net_1 ), .Y(
        N_1952_i_0));
    SLE \next_TAP_state[7]  (.D(\next_TAP_state_nss[7] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[7]_net_1 ));
    CFG4 #( .INIT(16'h0102) )  \loop_counter_0_0_0_a2[1]  (.A(
        \loop_counter[0]_net_1 ), .B(N_3935), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_305));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_srsts_0_a2_0_a2_0_a2[10]  (
        .A(\next_TAP_state[2]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[10] ));
    CFG2 #( .INIT(4'h8) )  \data_from_hptdc_1_RNIJ2HE[0]  (.A(
        lathed_data_from_hptdc_024), .B(\JTAG_0_data_from_hptdc[0] ), 
        .Y(N_3880_i_0));
    CFG3 #( .INIT(8'h20) )  \loop_counter_0_0_0_a2_1[0]  (.A(N_431), 
        .B(rst_c), .C(\loop_counter[0]_net_1 ), .Y(N_304));
    CFG4 #( .INIT(16'h7FBF) )  jtag_bus_in_use_s (.A(
        \TAP_state[0]_net_1 ), .B(\TAP_state[3]_net_1 ), .C(
        \TAP_state[2]_net_1 ), .D(\TAP_state[1]_net_1 ), .Y(
        jtag_bus_in_use_net_1));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[3]  (.A(rst_c), .B(
        \data_to[3]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[3]), .Y(
        \data_to_ldmx[3]_net_1 ));
    SLE \next_TAP_state_i[0]  (.D(\next_TAP_state_nss_i[0] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state_i[0]_net_1 ));
    SLE \next_TAP_state[5]  (.D(N_1916_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[5]_net_1 ));
    SLE \next_TAP_state[2]  (.D(\next_TAP_state_nss[2] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[2]_net_1 ));
    CFG4 #( .INIT(16'hAC0F) )  tdo_pad_o_2_7_i_m2_i_m2_am (.A(
        \data_to[1]_net_1 ), .B(\data_to[3]_net_1 ), .C(
        tdo_pad_o_2_7_i_m2_i_m2_am_1_1_net_1), .D(
        \loop_counter[0]_net_1 ), .Y(tdo_pad_o_2_7_i_m2_i_m2_am_net_1));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_srsts_0_a2_0_a2_0_a2[4]  (
        .A(N_475), .B(rst_c), .Y(\next_TAP_state_nss[4] ));
    CFG1 #( .INIT(2'h1) )  \data_from_hptdc_5_i_0_a2_RNI7ES5[0]  (.A(
        N_310), .Y(N_310_i));
    CFG4 #( .INIT(16'h0004) )  \data_from_hptdc_1ce[0]  (.A(
        \loop_counter[0]_net_1 ), .B(
        data_from_hptdc_1_sqmuxa_1_i_0_net_1), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        \data_from_hptdc_1ce[0]_net_1 ));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[4]  (.A(rst_c), .B(
        \data_to[4]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[4]), .Y(
        \data_to_ldmx[4]_net_1 ));
    CFG2 #( .INIT(4'h8) )  \data_from_hptdc_1_RNIK3HE[1]  (.A(
        lathed_data_from_hptdc_024), .B(\JTAG_0_data_from_hptdc[1] ), 
        .Y(N_3881_i_0));
    GND GND (.Y(GND_net_1));
    CFG2 #( .INIT(4'h2) )  \data_to_en[0]  (.A(
        \next_TAP_state[8]_net_1 ), .B(rst_c), .Y(
        \data_to_en[0]_net_1 ));
    SLE data_length (.D(data_length_ldmx_net_1), .CLK(clk_c_i_0), .EN(
        N_3926), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(data_length_net_1));
    CFG4 #( .INIT(16'h0008) )  \data_from_hptdc_1ce[1]  (.A(
        \loop_counter[0]_net_1 ), .B(
        data_from_hptdc_1_sqmuxa_1_i_0_net_1), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        \data_from_hptdc_1ce[1]_net_1 ));
    CFG3 #( .INIT(8'h04) )  \TAP_state_RNIJNFK[0]  (.A(
        \TAP_state[2]_net_1 ), .B(\TAP_state[1]_net_1 ), .C(
        \TAP_state[0]_net_1 ), .Y(un1_tdo_pad_o_1_sqmuxa_or));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[1]  (.A(rst_c), .B(
        \data_to[1]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[1]), .Y(
        \data_to_ldmx[1]_net_1 ));
    CFG4 #( .INIT(16'hAC0F) )  tdo_pad_o_2_7_i_m2_i_m2_bm (.A(
        \data_to[5]_net_1 ), .B(\data_to[7]_net_1 ), .C(
        tdo_pad_o_2_7_i_m2_i_m2_bm_1_1_net_1), .D(
        \loop_counter[0]_net_1 ), .Y(tdo_pad_o_2_7_i_m2_i_m2_bm_net_1));
    CFG4 #( .INIT(16'hE44E) )  data_length_ldmx (.A(
        \data_to_en[0]_net_1 ), .B(data_length_net_1), .C(
        ControlDecoder_0_jtag_instruction_0[0]), .D(
        ControlDecoder_0_jtag_instruction_0[1]), .Y(
        data_length_ldmx_net_1));
    CFG4 #( .INIT(16'h0001) )  
        \un1_data_sent_to_hptdc_i_a2_0_a2_2_a2_0[1]  (.A(
        \next_TAP_state[10]_net_1 ), .B(\next_TAP_state[4]_net_1 ), .C(
        \next_TAP_state[7]_net_1 ), .D(\next_TAP_state[1]_net_1 ), .Y(
        N_431));
    SLE \next_TAP_state[9]  (.D(\next_TAP_state_nss[9] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[9]_net_1 ));
    SLE \next_TAP_state[3]  (.D(\next_TAP_state_nss[3] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[3]_net_1 ));
    CFG2 #( .INIT(4'h2) )  tms_pad_o_6_i_0_0_a2_1 (.A(
        \next_TAP_state[5]_net_1 ), .B(ir_loop_net_1), .Y(N_475));
    CFG3 #( .INIT(8'h20) )  \next_TAP_state_srsts_0_a2_0_a2_0_a2[2]  (
        .A(\next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), 
        .Y(\next_TAP_state_nss[2] ));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[5]  (.A(rst_c), .B(
        \data_to[5]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[5]), .Y(
        \data_to_ldmx[5]_net_1 ));
    CFG3 #( .INIT(8'h08) )  data_received_from_hptdc_RNO (.A(
        get_data_net_1), .B(\next_TAP_state[1]_net_1 ), .C(N_455), .Y(
        N_3752_i_0));
    CFG4 #( .INIT(16'hFFFE) )  tms_pad_o_6_i_0_0_1 (.A(
        \next_TAP_state[10]_net_1 ), .B(\next_TAP_state[2]_net_1 ), .C(
        N_454), .D(N_475), .Y(tms_pad_o_6_i_0_0_1_net_1));
    CFG3 #( .INIT(8'hE2) )  tdo_pad_o_2_7_i_m2_i_m2_ns (.A(
        tdo_pad_o_2_7_i_m2_i_m2_am_net_1), .B(\loop_counter[2]_net_1 ), 
        .C(tdo_pad_o_2_7_i_m2_i_m2_bm_net_1), .Y(N_236));
    SLE \data_to[1]  (.D(\data_to_ldmx[1]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[1]_net_1 ));
    SLE \data_to[5]  (.D(\data_to_ldmx[5]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[5]_net_1 ));
    CFG4 #( .INIT(16'h222A) )  tms_pad_o_6_i_0_0_a2_0 (.A(
        \next_TAP_state[7]_net_1 ), .B(\loop_counter[2]_net_1 ), .C(
        \loop_counter[1]_net_1 ), .D(\loop_counter[0]_net_1 ), .Y(
        N_454));
    CFG4 #( .INIT(16'h0111) )  \loop_counter_0_0_0_a2[0]  (.A(
        \loop_counter[0]_net_1 ), .B(N_3935), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_302));
    CFG2 #( .INIT(4'h1) )  
        \un1_data_sent_to_hptdc_i_a2_0_a2_0_a2_1[3]  (.A(
        \next_TAP_state[7]_net_1 ), .B(\next_TAP_state[6]_net_1 ), .Y(
        \un1_data_sent_to_hptdc_i_a2_0_a2_0_a2_1[3]_net_1 ));
    CFG4 #( .INIT(16'h3020) )  \next_TAP_state_RNO[6]  (.A(
        \loop_counter[0]_net_1 ), .B(N_3935), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_1914_i_0));
    CFG4 #( .INIT(16'h3222) )  \next_TAP_state_srsts_0_0_0_a2[1]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(N_455), .D(
        \next_TAP_state[1]_net_1 ), .Y(\next_TAP_state_nss[1] ));
    CFG4 #( .INIT(16'hCECC) )  \loop_counter_0_0_0[2]  (.A(N_431), .B(
        \loop_counter_0_0_0_0[2]_net_1 ), .C(rst_c), .D(
        \loop_counter[2]_net_1 ), .Y(\loop_counter_0_0_0[2]_net_1 ));
    CFG4 #( .INIT(16'h0F53) )  tdo_pad_o_2_7_i_m2_i_m2_bm_1_1 (.A(
        \data_to[6]_net_1 ), .B(\data_to[4]_net_1 ), .C(
        \loop_counter[1]_net_1 ), .D(\loop_counter[0]_net_1 ), .Y(
        tdo_pad_o_2_7_i_m2_i_m2_bm_1_1_net_1));
    CFG3 #( .INIT(8'h32) )  \next_TAP_state_srsts_0_0_a2_0_a2[7]  (.A(
        N_454), .B(rst_c), .C(\next_TAP_state[10]_net_1 ), .Y(
        \next_TAP_state_nss[7] ));
    CFG2 #( .INIT(4'h1) )  
        \un1_data_sent_to_hptdc_i_a2_3_a2_3_a2_0[0]  (.A(
        \next_TAP_state[3]_net_1 ), .B(\next_TAP_state[9]_net_1 ), .Y(
        N_471));
    SLE \loop_counter[1]  (.D(\loop_counter_0_0_0[1]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[1]_net_1 ));
    SLE \next_TAP_state[1]  (.D(\next_TAP_state_nss[1] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[1]_net_1 ));
    SLE ir_loop (.D(\next_TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_1958_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(ir_loop_net_1));
    CFG4 #( .INIT(16'h0002) )  
        \un1_data_sent_to_hptdc_a2_0_a2_1_a2[2]  (.A(
        \next_TAP_state_i[0]_net_1 ), .B(\next_TAP_state[6]_net_1 ), 
        .C(\next_TAP_state[7]_net_1 ), .D(\next_TAP_state[1]_net_1 ), 
        .Y(\un1_data_sent_to_hptdc_a2_0_a2_1_a2[2]_net_1 ));
    CFG4 #( .INIT(16'hCECC) )  \loop_counter_0_0_0[1]  (.A(N_431), .B(
        N_305), .C(rst_c), .D(\loop_counter[1]_net_1 ), .Y(
        \loop_counter_0_0_0[1]_net_1 ));
    SLE trstn_pad_o (.D(rst_c_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(hptdc_trstn_3_c));
    CFG2 #( .INIT(4'hE) )  tms_pad_o_6_i_0_0_o2_0 (.A(
        ControlDecoder_0_send_data_to_hptdc_0), .B(
        ControlDecoder_0_get_data_from_hptdc_0), .Y(N_3926));
    CFG2 #( .INIT(4'hE) )  \data_from_hptdc_1_RNO[1]  (.A(
        \data_from_hptdc_1ce[1]_net_1 ), .B(N_310), .Y(
        \data_from_hptdc_1_RNO[1]_net_1 ));
    SLE \TAP_state[1]  (.D(N_1950_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[1]_net_1 ));
    CFG3 #( .INIT(8'h40) )  data_to_1_sqmuxa_0_a2_0_a2_1_a2 (.A(rst_c), 
        .B(\next_TAP_state[8]_net_1 ), .C(
        ControlDecoder_0_send_data_to_hptdc_0), .Y(data_to_1_sqmuxa));
    SLE \data_to[7]  (.D(\data_to_ldmx[7]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[7]_net_1 ));
    SLE \next_TAP_state[6]  (.D(N_1914_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[6]_net_1 ));
    SLE tms_pad_o (.D(N_3025_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(hptdc_tms_0_c));
    SLE \data_to[4]  (.D(\data_to_ldmx[4]_net_1 ), .CLK(clk_c_i_0), 
        .EN(ControlDecoder_0_send_data_to_hptdc_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\data_to[4]_net_1 ));
    CFG4 #( .INIT(16'h0ACE) )  data_from_hptdc_1_sqmuxa_1_i_0 (.A(
        \next_TAP_state[4]_net_1 ), .B(un1_tdo_pad_o_1_sqmuxa_or), .C(
        rst_c), .D(\TAP_state[3]_net_1 ), .Y(
        data_from_hptdc_1_sqmuxa_1_i_0_net_1));
    SLE \next_TAP_state[10]  (.D(\next_TAP_state_nss[10] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[10]_net_1 ));
    SLE \next_TAP_state[4]  (.D(\next_TAP_state_nss[4] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[4]_net_1 ));
    CFG4 #( .INIT(16'hDC8C) )  \data_to_ldmx[7]  (.A(rst_c), .B(
        \data_to[7]_net_1 ), .C(\next_TAP_state[8]_net_1 ), .D(
        ControlDecoder_0_data_to_hptdc_0[7]), .Y(
        \data_to_ldmx[7]_net_1 ));
    CFG4 #( .INIT(16'hFDA8) )  tdo_pad_o_1 (.A(
        un1_tdo_pad_o_1_sqmuxa_or), .B(N_236), .C(\TAP_state[3]_net_1 )
        , .D(hptdc_tdo_0_c), .Y(tdo_pad_o_1_net_1));
    SLE \data_to[2]  (.D(ControlDecoder_0_data_to_hptdc_0[2]), .CLK(
        clk_c_i_0), .EN(data_to_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\data_to[2]_net_1 ));
    SLE \data_from_hptdc_1[1]  (.D(hptdc_tdi_0_c), .CLK(clk_c_i_0), 
        .EN(\data_from_hptdc_1_RNO[1]_net_1 ), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(N_310_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \JTAG_0_data_from_hptdc[1] ));
    SLE \data_from_hptdc_1[0]  (.D(hptdc_tdi_0_c), .CLK(clk_c_i_0), 
        .EN(\data_from_hptdc_1_RNO[0]_net_1 ), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(N_310_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \JTAG_0_data_from_hptdc[0] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_srsts_0_a2_0_a2_0_a2[9]  (
        .A(\next_TAP_state[6]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[9] ));
    SLE \TAP_state[3]  (.D(N_1952_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[3]_net_1 ));
    CFG4 #( .INIT(16'h0D05) )  \next_TAP_state_RNO[5]  (.A(N_471), .B(
        N_3926), .C(rst_c), .D(\next_TAP_state[8]_net_1 ), .Y(
        N_1916_i_0));
    CFG4 #( .INIT(16'h22EA) )  get_data_RNO (.A(get_data_net_1), .B(
        \next_TAP_state[8]_net_1 ), .C(
        ControlDecoder_0_get_data_from_hptdc_0), .D(
        ControlDecoder_0_send_data_to_hptdc_0), .Y(N_3753_i_0));
    
endmodule


module JTAG(
       hptdc_tms_1_c,
       clk_c_i_0,
       rst_c_i_0,
       hptdc_tdo_1_c,
       rst_c
    );
output hptdc_tms_1_c;
input  clk_c_i_0;
input  rst_c_i_0;
output hptdc_tdo_1_c;
input  rst_c;

    wire VCC_net_1, N_85_mux, GND_net_1, \TAP_state[0]_net_1 , 
        N_1736_i_0, \TAP_state[1]_net_1 , N_1737_i_0, 
        \TAP_state[2]_net_1 , \TAP_state_RNO[2]_net_1 , 
        \TAP_state[3]_net_1 , N_1739_i_0, \loop_counter[0]_net_1 , 
        \loop_counter_RNO_3[0] , \loop_counter[1]_net_1 , 
        \loop_counter_RNO_3[1] , \loop_counter[2]_net_1 , 
        \loop_counter_RNO_3[2] , N_4005_i_0, \next_TAP_state[5]_net_1 , 
        \next_TAP_state_RNO[5]_net_1 , \next_TAP_state[6]_net_1 , 
        N_78_mux, \next_TAP_state[7]_net_1 , \next_TAP_state_nss[7] , 
        \next_TAP_state[8]_net_1 , N_1740_i_0, 
        \next_TAP_state[9]_net_1 , \next_TAP_state_nss[9] , 
        \next_TAP_state[10]_net_1 , \next_TAP_state_nss[10] , 
        \next_TAP_state_i[0]_net_1 , N_3704_i_0, 
        \next_TAP_state[1]_net_1 , \next_TAP_state_RNO[1]_net_1 , 
        \next_TAP_state[2]_net_1 , \next_TAP_state_RNO[2]_net_1 , 
        \next_TAP_state[3]_net_1 , \next_TAP_state_nss[3] , 
        \next_TAP_state[4]_net_1 , \next_TAP_state_nss[4] , 
        ir_loop_net_1, N_1741_i_0, \loop_counter_RNO_0[0]_net_1 , 
        \loop_counter_RNO_1[0]_net_1 , \loop_counter_RNO_0[1]_net_1 , 
        \loop_counter_RNO_1[1]_net_1 , \loop_counter_RNO_0[2]_net_1 , 
        \loop_counter_RNO_1[2]_net_1 , m5_1, m62_1, N_7_0, N_3702, 
        N_65_mux, N_3736;
    
    SLE tdo_pad_o (.D(\TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_4005_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(hptdc_tdo_1_c));
    CFG3 #( .INIT(8'hE2) )  \loop_counter_RNO[1]  (.A(
        \loop_counter_RNO_0[1]_net_1 ), .B(\next_TAP_state[7]_net_1 ), 
        .C(\loop_counter_RNO_1[1]_net_1 ), .Y(\loop_counter_RNO_3[1] ));
    CFG4 #( .INIT(16'hFFFB) )  \TAP_state_RNO[1]  (.A(
        \next_TAP_state[7]_net_1 ), .B(m62_1), .C(
        \next_TAP_state[5]_net_1 ), .D(\next_TAP_state[4]_net_1 ), .Y(
        N_1737_i_0));
    CFG2 #( .INIT(4'hE) )  \next_TAP_state_RNO[8]  (.A(
        \next_TAP_state[8]_net_1 ), .B(rst_c), .Y(N_1740_i_0));
    SLE \next_TAP_state[8]  (.D(N_1740_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[8]_net_1 ));
    CFG4 #( .INIT(16'hFFBF) )  \TAP_state_RNO[0]  (.A(
        \next_TAP_state[5]_net_1 ), .B(N_7_0), .C(
        \next_TAP_state_i[0]_net_1 ), .D(\next_TAP_state[6]_net_1 ), 
        .Y(N_1736_i_0));
    CFG2 #( .INIT(4'h1) )  \TAP_state_RNO_0[3]  (.A(
        \next_TAP_state[6]_net_1 ), .B(\next_TAP_state[10]_net_1 ), .Y(
        m5_1));
    SLE \TAP_state[2]  (.D(\TAP_state_RNO[2]_net_1 ), .CLK(clk_c_i_0), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        rst_c_i_0), .SD(VCC_net_1), .LAT(GND_net_1), .Q(
        \TAP_state[2]_net_1 ));
    SLE \loop_counter[0]  (.D(\loop_counter_RNO_3[0] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[0]_net_1 ));
    SLE \TAP_state[0]  (.D(N_1736_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[0]_net_1 ));
    CFG3 #( .INIT(8'hFE) )  ir_loop_RNO (.A(rst_c), .B(
        \next_TAP_state[9]_net_1 ), .C(\next_TAP_state[3]_net_1 ), .Y(
        N_1741_i_0));
    CFG4 #( .INIT(16'h1000) )  \loop_counter_RNO_0[1]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(m62_1), .D(
        \loop_counter[1]_net_1 ), .Y(\loop_counter_RNO_0[1]_net_1 ));
    CFG3 #( .INIT(8'h32) )  \next_TAP_state_RNO[7]  (.A(N_3736), .B(
        rst_c), .C(\next_TAP_state[10]_net_1 ), .Y(
        \next_TAP_state_nss[7] ));
    SLE \loop_counter[2]  (.D(\loop_counter_RNO_3[2] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[2]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[9]  (.A(
        \next_TAP_state[6]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[9] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[1]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_RNO[1]_net_1 ));
    CFG3 #( .INIT(8'h20) )  \next_TAP_state_RNO[2]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_RNO[2]_net_1 ));
    CFG3 #( .INIT(8'hE2) )  \loop_counter_RNO[2]  (.A(
        \loop_counter_RNO_0[2]_net_1 ), .B(\next_TAP_state[7]_net_1 ), 
        .C(\loop_counter_RNO_1[2]_net_1 ), .Y(\loop_counter_RNO_3[2] ));
    CFG4 #( .INIT(16'h0010) )  tms_pad_o_RNO (.A(
        \next_TAP_state[2]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        N_65_mux), .D(N_3736), .Y(N_85_mux));
    CFG4 #( .INIT(16'hFEFF) )  \TAP_state_RNO[3]  (.A(
        \next_TAP_state[9]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        \next_TAP_state[7]_net_1 ), .D(m5_1), .Y(N_1739_i_0));
    SLE \next_TAP_state[7]  (.D(\next_TAP_state_nss[7] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[7]_net_1 ));
    CFG3 #( .INIT(8'h0D) )  tms_pad_o_RNO_0 (.A(
        \next_TAP_state[5]_net_1 ), .B(ir_loop_net_1), .C(
        \next_TAP_state[10]_net_1 ), .Y(N_65_mux));
    SLE \next_TAP_state_i[0]  (.D(N_3704_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state_i[0]_net_1 ));
    SLE \next_TAP_state[5]  (.D(\next_TAP_state_RNO[5]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[5]_net_1 ));
    SLE \next_TAP_state[2]  (.D(\next_TAP_state_RNO[2]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[2]_net_1 ));
    GND GND (.Y(GND_net_1));
    CFG4 #( .INIT(16'h1004) )  \loop_counter_RNO_1[2]  (.A(rst_c), .B(
        \loop_counter[2]_net_1 ), .C(\loop_counter[1]_net_1 ), .D(
        \loop_counter[0]_net_1 ), .Y(\loop_counter_RNO_1[2]_net_1 ));
    SLE \next_TAP_state[9]  (.D(\next_TAP_state_nss[9] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[9]_net_1 ));
    SLE \next_TAP_state[3]  (.D(\next_TAP_state_nss[3] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[3]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNIAPRP[3]  (.A(
        \next_TAP_state[3]_net_1 ), .B(\next_TAP_state[9]_net_1 ), .Y(
        N_7_0));
    CFG4 #( .INIT(16'h1000) )  \loop_counter_RNO_0[2]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(m62_1), .D(
        \loop_counter[2]_net_1 ), .Y(\loop_counter_RNO_0[2]_net_1 ));
    CFG3 #( .INIT(8'hE2) )  \loop_counter_RNO[0]  (.A(
        \loop_counter_RNO_0[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), 
        .C(\loop_counter_RNO_1[0]_net_1 ), .Y(\loop_counter_RNO_3[0] ));
    CFG3 #( .INIT(8'h54) )  \next_TAP_state_RNO_0[6]  (.A(rst_c), .B(
        \loop_counter[1]_net_1 ), .C(\loop_counter[0]_net_1 ), .Y(
        N_3702));
    CFG3 #( .INIT(8'h80) )  \next_TAP_state_RNO[6]  (.A(
        \loop_counter[2]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        N_3702), .Y(N_78_mux));
    CFG4 #( .INIT(16'h0015) )  \loop_counter_RNO_1[0]  (.A(rst_c), .B(
        \loop_counter[2]_net_1 ), .C(\loop_counter[1]_net_1 ), .D(
        \loop_counter[0]_net_1 ), .Y(\loop_counter_RNO_1[0]_net_1 ));
    CFG4 #( .INIT(16'h0010) )  \TAP_state_RNO[2]  (.A(
        \next_TAP_state[6]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \next_TAP_state_i[0]_net_1 ), .D(\next_TAP_state[1]_net_1 ), 
        .Y(\TAP_state_RNO[2]_net_1 ));
    SLE \loop_counter[1]  (.D(\loop_counter_RNO_3[1] ), .CLK(clk_c_i_0)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[1]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNIGJHN[1]  (.A(
        \next_TAP_state[10]_net_1 ), .B(\next_TAP_state[1]_net_1 ), .Y(
        m62_1));
    SLE \next_TAP_state[1]  (.D(\next_TAP_state_RNO[1]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[1]_net_1 ));
    SLE ir_loop (.D(\next_TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_1741_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(ir_loop_net_1));
    CFG4 #( .INIT(16'h0110) )  \loop_counter_RNO_1[1]  (.A(rst_c), .B(
        \loop_counter[2]_net_1 ), .C(\loop_counter[1]_net_1 ), .D(
        \loop_counter[0]_net_1 ), .Y(\loop_counter_RNO_1[1]_net_1 ));
    SLE \TAP_state[1]  (.D(N_1737_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[1]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \next_TAP_state_i_RNO[0]  (.A(
        \next_TAP_state[1]_net_1 ), .B(rst_c), .Y(N_3704_i_0));
    SLE \next_TAP_state[6]  (.D(N_78_mux), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[6]_net_1 ));
    SLE tms_pad_o (.D(N_85_mux), .CLK(clk_c_i_0), .EN(VCC_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(hptdc_tms_1_c));
    CFG3 #( .INIT(8'h04) )  tdo_pad_o_RNO (.A(\TAP_state[2]_net_1 ), 
        .B(\TAP_state[1]_net_1 ), .C(\TAP_state[0]_net_1 ), .Y(
        N_4005_i_0));
    SLE \next_TAP_state[10]  (.D(\next_TAP_state_nss[10] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[10]_net_1 ));
    CFG4 #( .INIT(16'h0C4C) )  \loop_counter_RNI83PL1[0]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_3736));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[3]  (.A(
        \next_TAP_state_i[0]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[3] ));
    SLE \next_TAP_state[4]  (.D(\next_TAP_state_nss[4] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[4]_net_1 ));
    CFG4 #( .INIT(16'h1000) )  \loop_counter_RNO_0[0]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(m62_1), .D(
        \loop_counter[0]_net_1 ), .Y(\loop_counter_RNO_0[0]_net_1 ));
    SLE \TAP_state[3]  (.D(N_1739_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[3]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[5]  (.A(N_7_0), .B(
        rst_c), .Y(\next_TAP_state_RNO[5]_net_1 ));
    CFG3 #( .INIT(8'h02) )  \next_TAP_state_RNO[4]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_nss[4] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[10]  (.A(
        \next_TAP_state[2]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[10] ));
    
endmodule


module JTAG_1(
       hptdc_tms_3_c,
       clk_c_i_0,
       rst_c_i_0,
       hptdc_tdo_3_c,
       rst_c
    );
output hptdc_tms_3_c;
input  clk_c_i_0;
input  rst_c_i_0;
output hptdc_tdo_3_c;
input  rst_c;

    wire VCC_net_1, N_84_mux, GND_net_1, \TAP_state[0]_net_1 , 
        N_1436_i_0, \TAP_state[1]_net_1 , N_1437_i_0, 
        \TAP_state[2]_net_1 , \TAP_state_RNO_1[2] , 
        \TAP_state[3]_net_1 , N_1439_i_0, \loop_counter[0]_net_1 , 
        \loop_counter_RNO[0]_net_1 , \loop_counter[1]_net_1 , 
        \loop_counter_RNO[1]_net_1 , \loop_counter[2]_net_1 , 
        \loop_counter_RNO[2]_net_1 , N_4007_i_0, 
        \next_TAP_state_i[0]_net_1 , N_3611_i_0, 
        \next_TAP_state[1]_net_1 , \next_TAP_state_RNO_1[1] , 
        \next_TAP_state[2]_net_1 , \next_TAP_state_RNO_1[2] , 
        \next_TAP_state[3]_net_1 , \next_TAP_state_nss[3] , 
        \next_TAP_state[4]_net_1 , \next_TAP_state_nss[4] , 
        \next_TAP_state[5]_net_1 , N_48, \next_TAP_state[6]_net_1 , 
        N_77_mux, \next_TAP_state[7]_net_1 , \next_TAP_state_nss[7] , 
        \next_TAP_state[8]_net_1 , N_1440_i_0, 
        \next_TAP_state[9]_net_1 , \next_TAP_state_nss[9] , 
        \next_TAP_state[10]_net_1 , \next_TAP_state_nss[10] , 
        ir_loop_net_1, N_1441_i_0, m46_ns_1, N_71_mux, m43_ns_1, 
        m39_ns_1, m10_1, N_63_mux, N_12_0, N_3609, N_13_0, N_3630;
    
    SLE tdo_pad_o (.D(\TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_4007_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(hptdc_tdo_3_c));
    CFG4 #( .INIT(16'h2250) )  \loop_counter_RNO[1]  (.A(
        \next_TAP_state[7]_net_1 ), .B(rst_c), .C(N_71_mux), .D(
        m43_ns_1), .Y(\loop_counter_RNO[1]_net_1 ));
    CFG4 #( .INIT(16'hFFEF) )  \TAP_state_RNO[1]  (.A(
        \next_TAP_state[1]_net_1 ), .B(\next_TAP_state[4]_net_1 ), .C(
        N_12_0), .D(\next_TAP_state[7]_net_1 ), .Y(N_1437_i_0));
    CFG2 #( .INIT(4'hE) )  \next_TAP_state_RNO[8]  (.A(
        \next_TAP_state[8]_net_1 ), .B(rst_c), .Y(N_1440_i_0));
    SLE \next_TAP_state[8]  (.D(N_1440_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[8]_net_1 ));
    CFG4 #( .INIT(16'hFFBF) )  \TAP_state_RNO[0]  (.A(
        \next_TAP_state[5]_net_1 ), .B(N_63_mux), .C(
        \next_TAP_state_i[0]_net_1 ), .D(\next_TAP_state[6]_net_1 ), 
        .Y(N_1436_i_0));
    CFG2 #( .INIT(4'h1) )  \TAP_state_RNO_0[3]  (.A(
        \next_TAP_state[10]_net_1 ), .B(\next_TAP_state[6]_net_1 ), .Y(
        m10_1));
    CFG4 #( .INIT(16'h0C4C) )  \loop_counter_RNIG7VL[0]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        N_3630));
    SLE \TAP_state[2]  (.D(\TAP_state_RNO_1[2] ), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[2]_net_1 ));
    SLE \loop_counter[0]  (.D(\loop_counter_RNO[0]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[0]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \TAP_state_RNO_0[1]  (.A(
        \next_TAP_state[5]_net_1 ), .B(\next_TAP_state[10]_net_1 ), .Y(
        N_12_0));
    SLE \TAP_state[0]  (.D(N_1436_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[0]_net_1 ));
    CFG3 #( .INIT(8'hFE) )  ir_loop_RNO (.A(rst_c), .B(
        \next_TAP_state[9]_net_1 ), .C(\next_TAP_state[3]_net_1 ), .Y(
        N_1441_i_0));
    CFG4 #( .INIT(16'h043B) )  \loop_counter_RNO_0[1]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        m43_ns_1));
    CFG3 #( .INIT(8'h32) )  \next_TAP_state_RNO[7]  (.A(N_3630), .B(
        rst_c), .C(\next_TAP_state[10]_net_1 ), .Y(
        \next_TAP_state_nss[7] ));
    SLE \loop_counter[2]  (.D(\loop_counter_RNO[2]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[2]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[9]  (.A(
        \next_TAP_state[6]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[9] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[1]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_RNO_1[1] ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNIE12D[3]  (.A(
        \next_TAP_state[3]_net_1 ), .B(\next_TAP_state[9]_net_1 ), .Y(
        N_63_mux));
    CFG3 #( .INIT(8'h20) )  \next_TAP_state_RNO[2]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_RNO_1[2] ));
    CFG4 #( .INIT(16'h2250) )  \loop_counter_RNO[2]  (.A(
        \next_TAP_state[7]_net_1 ), .B(rst_c), .C(N_71_mux), .D(
        m39_ns_1), .Y(\loop_counter_RNO[2]_net_1 ));
    CFG4 #( .INIT(16'h0010) )  tms_pad_o_RNO (.A(
        \next_TAP_state[2]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        N_13_0), .D(N_3630), .Y(N_84_mux));
    CFG4 #( .INIT(16'hFEFF) )  \TAP_state_RNO[3]  (.A(
        \next_TAP_state[9]_net_1 ), .B(\next_TAP_state[8]_net_1 ), .C(
        \next_TAP_state[7]_net_1 ), .D(m10_1), .Y(N_1439_i_0));
    SLE \next_TAP_state[7]  (.D(\next_TAP_state_nss[7] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[7]_net_1 ));
    CFG3 #( .INIT(8'h0D) )  tms_pad_o_RNO_0 (.A(
        \next_TAP_state[5]_net_1 ), .B(ir_loop_net_1), .C(
        \next_TAP_state[10]_net_1 ), .Y(N_13_0));
    SLE \next_TAP_state_i[0]  (.D(N_3611_i_0), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state_i[0]_net_1 ));
    SLE \next_TAP_state[5]  (.D(N_48), .CLK(clk_c_i_0), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[5]_net_1 ));
    SLE \next_TAP_state[2]  (.D(\next_TAP_state_RNO_1[2] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[2]_net_1 ));
    GND GND (.Y(GND_net_1));
    SLE \next_TAP_state[9]  (.D(\next_TAP_state_nss[9] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[9]_net_1 ));
    SLE \next_TAP_state[3]  (.D(\next_TAP_state_nss[3] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[3]_net_1 ));
    CFG4 #( .INIT(16'h0B43) )  \loop_counter_RNO_0[2]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        \loop_counter[2]_net_1 ), .D(\loop_counter[1]_net_1 ), .Y(
        m39_ns_1));
    CFG4 #( .INIT(16'h6240) )  \loop_counter_RNO[0]  (.A(
        \loop_counter[0]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        m46_ns_1), .D(N_71_mux), .Y(\loop_counter_RNO[0]_net_1 ));
    CFG3 #( .INIT(8'h54) )  \next_TAP_state_RNO_0[6]  (.A(rst_c), .B(
        \loop_counter[1]_net_1 ), .C(\loop_counter[0]_net_1 ), .Y(
        N_3609));
    CFG3 #( .INIT(8'h80) )  \next_TAP_state_RNO[6]  (.A(
        \loop_counter[2]_net_1 ), .B(\next_TAP_state[7]_net_1 ), .C(
        N_3609), .Y(N_77_mux));
    CFG4 #( .INIT(16'h0004) )  \TAP_state_RNO[2]  (.A(
        \next_TAP_state[6]_net_1 ), .B(\next_TAP_state_i[0]_net_1 ), 
        .C(\next_TAP_state[7]_net_1 ), .D(\next_TAP_state[1]_net_1 ), 
        .Y(\TAP_state_RNO_1[2] ));
    SLE \loop_counter[1]  (.D(\loop_counter_RNO[1]_net_1 ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \loop_counter[1]_net_1 ));
    SLE \next_TAP_state[1]  (.D(\next_TAP_state_RNO_1[1] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[1]_net_1 ));
    SLE ir_loop (.D(\next_TAP_state[3]_net_1 ), .CLK(clk_c_i_0), .EN(
        N_1441_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), 
        .SD(VCC_net_1), .LAT(GND_net_1), .Q(ir_loop_net_1));
    CFG4 #( .INIT(16'h0001) )  \next_TAP_state_RNI7R3Q[4]  (.A(
        \next_TAP_state[4]_net_1 ), .B(rst_c), .C(
        \next_TAP_state[10]_net_1 ), .D(\next_TAP_state[1]_net_1 ), .Y(
        N_71_mux));
    SLE \TAP_state[1]  (.D(N_1437_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[1]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \next_TAP_state_i_RNO[0]  (.A(
        \next_TAP_state[1]_net_1 ), .B(rst_c), .Y(N_3611_i_0));
    SLE \next_TAP_state[6]  (.D(N_77_mux), .CLK(clk_c_i_0), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\next_TAP_state[6]_net_1 ));
    SLE tms_pad_o (.D(N_84_mux), .CLK(clk_c_i_0), .EN(VCC_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(hptdc_tms_3_c));
    CFG3 #( .INIT(8'h04) )  tdo_pad_o_RNO (.A(\TAP_state[2]_net_1 ), 
        .B(\TAP_state[1]_net_1 ), .C(\TAP_state[0]_net_1 ), .Y(
        N_4007_i_0));
    SLE \next_TAP_state[10]  (.D(\next_TAP_state_nss[10] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[10]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[3]  (.A(
        \next_TAP_state_i[0]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[3] ));
    SLE \next_TAP_state[4]  (.D(\next_TAP_state_nss[4] ), .CLK(
        clk_c_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \next_TAP_state[4]_net_1 ));
    CFG3 #( .INIT(8'h15) )  \loop_counter_RNO_0[0]  (.A(rst_c), .B(
        \loop_counter[2]_net_1 ), .C(\loop_counter[1]_net_1 ), .Y(
        m46_ns_1));
    SLE \TAP_state[3]  (.D(N_1439_i_0), .CLK(clk_c_i_0), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(rst_c_i_0), .SD(
        VCC_net_1), .LAT(GND_net_1), .Q(\TAP_state[3]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \next_TAP_state_RNO[5]  (.A(N_63_mux), .B(
        rst_c), .Y(N_48));
    CFG3 #( .INIT(8'h02) )  \next_TAP_state_RNO[4]  (.A(
        \next_TAP_state[5]_net_1 ), .B(rst_c), .C(ir_loop_net_1), .Y(
        \next_TAP_state_nss[4] ));
    CFG2 #( .INIT(4'h2) )  \next_TAP_state_RNO[10]  (.A(
        \next_TAP_state[2]_net_1 ), .B(rst_c), .Y(
        \next_TAP_state_nss[10] ));
    
endmodule


module ControlDecoder(
       ControlDecoder_0_threshold_voltage_1,
       qusb_fd_temp,
       ControlDecoder_0_jtag_instruction_0,
       ControlDecoder_0_data_to_hptdc_0,
       qusb_fd_in,
       clk_c,
       N_3880_i_0,
       N_3881_i_0,
       ControlDecoder_0_get_data_from_hptdc_0,
       ControlDecoder_0_send_data_to_hptdc_0,
       JTAG_0_data_received_from_hptdc,
       qusb_wen_c,
       rst_c,
       lathed_data_from_hptdc_024,
       JTAG_0_jtag_bus_in_use
    );
output [13:0] ControlDecoder_0_threshold_voltage_1;
output [7:0] qusb_fd_temp;
output [1:0] ControlDecoder_0_jtag_instruction_0;
output [7:0] ControlDecoder_0_data_to_hptdc_0;
input  [15:0] qusb_fd_in;
input  clk_c;
input  N_3880_i_0;
input  N_3881_i_0;
output ControlDecoder_0_get_data_from_hptdc_0;
output ControlDecoder_0_send_data_to_hptdc_0;
input  JTAG_0_data_received_from_hptdc;
input  qusb_wen_c;
input  rst_c;
output lathed_data_from_hptdc_024;
input  JTAG_0_jtag_bus_in_use;

    wire N_3907_i_0, N_3907_i_0_i, \counter_0[6]_net_1 , VCC_net_1, 
        N_3873_i_0, GND_net_1, \instruction_0[0]_net_1 , N_3874_i_0, 
        N_3878_i_0, i4_i, N_3875_i_0, \instruction_0[2]_net_1 , 
        N_3876_i_0, \instruction_0[3]_net_1 , \instruction_0_8[3] , 
        \instruction_0[4]_net_1 , N_259_i_0, \instruction_0[5]_net_1 , 
        \instruction_0_8[5] , \instruction_0[6]_net_1 , N_260_i_0, 
        \counter_0[0]_net_1 , N_3867_i_0, \counter_0[1]_net_1 , 
        N_3868_i_0, \counter_0[2]_net_1 , N_3869_i_0, 
        \counter_0[3]_net_1 , N_3870_i_0, \counter_0[4]_net_1 , 
        N_3871_i_0, \counter_0[5]_net_1 , N_3872_i_0, 
        \threshold_buffer[13]_net_1 , threshold_voltage_1_sqmuxa, 
        \run_number[0]_net_1 , \run_number_buffer[0]_net_1 , 
        run_number_1_sqmuxa, \run_number[1]_net_1 , 
        \run_number_buffer[1]_net_1 , \run_number[2]_net_1 , 
        \run_number_buffer[2]_net_1 , \run_number[3]_net_1 , 
        \run_number_buffer[3]_net_1 , \run_number[4]_net_1 , 
        \run_number_buffer[4]_net_1 , \run_number[5]_net_1 , 
        \run_number_buffer[5]_net_1 , \run_number[6]_net_1 , 
        \run_number_buffer[6]_net_1 , \run_number[7]_net_1 , 
        \run_number_buffer[7]_net_1 , \qusb_fd_temp_10[6]_net_1 , 
        un1_instruction_047_12_i_0_0_net_1, \qusb_fd_temp_10[7]_net_1 , 
        \threshold_buffer[0]_net_1 , \threshold_buffer[1]_net_1 , 
        \threshold_buffer[2]_net_1 , \threshold_buffer[3]_net_1 , 
        \threshold_buffer[4]_net_1 , \threshold_buffer[5]_net_1 , 
        \threshold_buffer[6]_net_1 , \threshold_buffer[7]_net_1 , 
        \threshold_buffer[8]_net_1 , \threshold_buffer[9]_net_1 , 
        \threshold_buffer[10]_net_1 , \threshold_buffer[11]_net_1 , 
        \threshold_buffer[12]_net_1 , 
        \lathed_data_from_hptdc_0[0]_net_1 , 
        lathed_data_from_hptdc_0_0_sqmuxa_i_0_0_net_1, 
        \lathed_data_from_hptdc_0[1]_net_1 , 
        \lathed_data_from_hptdc_0[7]_net_1 , N_3586, N_229, 
        \qusb_fd_temp_10[1]_net_1 , \qusb_fd_temp_10[2]_net_1 , 
        \qusb_fd_temp_10[3]_net_1 , \qusb_fd_temp_10[4]_net_1 , 
        \qusb_fd_temp_10[5]_net_1 , N_3534_i_0, N_3955_i_0, 
        un1_instruction_047_1_or, 
        latched_data_received_from_hptdc_0_net_1, N_3535_i_0, 
        get_data_from_hptdc_0_1_0_0_net_1, 
        send_data_to_hptdc_0_RNO_net_1, instruction_046_net_1, 
        old_data_received_from_hptdc_0_net_1, old_qusb_wen_net_1, 
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1, N_3540_i_0, 
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1, N_3539_i_0, 
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1, N_3538_i_0, 
        N_3906, N_247, counter_N_3_mux_0_0, N_414, N_413, N_3932, 
        N_378, \counter_0_19_i_3_1[1]_net_1 , N_3953, N_3921, N_463, 
        \counter_0_19_i_a2_3_0[2]_net_1 , N_3869_i_1_0, N_342, N_3910, 
        \counter_0_19_i_5[2]_net_1 , N_3911, N_3891, N_338, 
        \counter_0_19_i_1_1[2]_net_1 , \counter_0_19_i_1[2]_net_1 , 
        N_3940, \counter_0_19_i_o2_2_2[2]_net_1 , N_379_2, 
        \counter_0_19_i_a2_8_0[2] , \counter_0_19_i_2[2]_net_1 , 
        \counter_0_19_i_5_1[2]_net_1 , N_345, 
        \counter_0_19_i_0[1]_net_1 , N_415, 
        \counter_0_19_i_3[1]_net_1 , N_355, 
        \counter_0_19_i_1_1[6]_net_1 , \counter_0_19_i_1[6]_net_1 , 
        \counter_0_19_i_6[6]_net_1 , N_417, N_416, 
        \counter_0_19_i_4[6]_net_1 , N_176_i, N_357, 
        \counter_0_19_i_1[4]_net_1 , N_483, 
        \un1_instruction_047_180[3] , N_3924, N_347, N_239, N_491, 
        N_3905, N_408, N_3930, N_238, N_252, N_427, \counter_0_2[2] , 
        \counter_0_2[1] , \counter_0_2[0] , un1_instruction_047_c4_i, 
        \counter_0_19_i_o2_2_2_0[2]_net_1 , 
        \counter_0_19_i_o2_2_0[1]_net_1 , 
        \instruction_0_8_i_o2_0[1]_net_1 , \counter_0_2[4] , N_419, 
        N_228, \counter_0_19_i_a2_12_0_0[0]_net_1 , 
        \counter_0_19_i_o2_2_7[1]_net_1 , 
        \counter_0_19_i_o2_2_6[1]_net_1 , N_4009, N_385, 
        \counter_0_19_i_a2_1_0[0]_net_1 , \un1_instruction_047_180[1] , 
        N_485, N_3919, N_3952, N_3927, N_3922, 
        latched_data_received_from_hptdc_0_RNI789Q_net_1, 
        \counter_0_19_i_o2_6_0[2]_net_1 , 
        \counter_0_19_i_a2_1_0[3]_net_1 , N_363, N_3894, N_3925, 
        \counter_0_19_i_o2_2_2_RNI0DV61[2]_net_1 , 
        \counter_0_19_i_a2_3_1[4]_net_1 , m22_i_a2_0_1, 
        counter_N_3_mux, \un1_instruction_047_180[2] , un1_N_5, 
        un1_N_5_0, \counter_0_19_i_4_0[3]_net_1 , 
        \counter_0_19_i_a2_a1_2[5]_net_1 , 
        \counter_0_19_i_a2_3_0[0]_net_1 , 
        \counter_0_19_i_a2_2_0[1]_net_1 , 
        un1_instruction_047_12_i_0_0_a2_1_net_1, m22_i_o2_0, N_3928, 
        N_227, \counter_0_19_i_a2_a0_3[5]_net_1 , 
        \counter_0_19_i_a2_2_1[3]_net_1 , N_356, 
        \un1_instruction_047_180[5] , N_384, 
        \counter_0_19_i_a2_4_0[2]_net_1 , 
        \counter_0_19_i_a2_3_0[1]_net_1 , N_364, N_362, N_254, 
        \counter_0_19_i_a0[3]_net_1 , N_331, N_325, 
        \counter_0_19_i_0_0[0]_net_1 , N_327, N_333, N_360, N_361, 
        \counter_0_19_i_2[0]_net_1 , \counter_0_19_i_2[6]_net_1 , 
        \counter_0_19_i_4_2[3]_net_1 , \counter_0_19_i_2[5]_net_1 , 
        \counter_0_19_i_1[5]_net_1 , N_322, 
        \jtag_instruction_0_1_1_i_0_0[0]_net_1 , N_335, 
        \counter_0_19_i_3[0]_net_1 , \counter_0_19_i_4[4]_net_1 , 
        \counter_0_19_i_4_4[3]_net_1 , \counter_0_19_i_3[4]_net_1 , 
        \counter_0_19_i_5[0]_net_1 , \counter_0_19_i_5[1]_net_1 , 
        \counter_0_19_i_7[1]_net_1 ;
    
    CFG3 #( .INIT(8'hFB) )  send_data_to_hptdc_0_RNO_2 (.A(N_408), .B(
        N_3930), .C(N_3919), .Y(m22_i_o2_0));
    CFG2 #( .INIT(4'hD) )  \counter_0_19_i_o2[6]  (.A(
        counter_N_3_mux_0_0), .B(qusb_fd_in[3]), .Y(N_3921));
    CFG3 #( .INIT(8'hFD) )  \counter_0_19_i_o2_6_0[2]  (.A(
        instruction_046_net_1), .B(\counter_0[5]_net_1 ), .C(N_4009), 
        .Y(\counter_0_19_i_o2_6_0[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \qusb_fd_temp_10[2]  (.A(
        \run_number[2]_net_1 ), .B(qusb_fd_in[7]), .Y(
        \qusb_fd_temp_10[2]_net_1 ));
    CFG3 #( .INIT(8'h01) )  \counter_0_RNO[1]  (.A(
        \counter_0_19_i_7[1]_net_1 ), .B(N_333), .C(N_331), .Y(
        N_3868_i_0));
    SLE \jtag_instruction_0_1[1]  (.D(N_3955_i_0), .CLK(clk_c), .EN(
        un1_instruction_047_1_or), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        ControlDecoder_0_jtag_instruction_0[1]));
    CFG2 #( .INIT(4'h2) )  \qusb_fd_temp_10[4]  (.A(
        \run_number[4]_net_1 ), .B(qusb_fd_in[7]), .Y(
        \qusb_fd_temp_10[4]_net_1 ));
    CFG4 #( .INIT(16'hF0F4) )  \counter_0_19_i_1[6]  (.A(qusb_fd_in[1])
        , .B(qusb_fd_in[2]), .C(N_355), .D(
        \counter_0_19_i_1_1[6]_net_1 ), .Y(\counter_0_19_i_1[6]_net_1 )
        );
    CFG2 #( .INIT(4'h8) )  \counter_0_19_i_a2_6[3]  (.A(
        \counter_0[5]_net_1 ), .B(\counter_0[4]_net_1 ), .Y(N_483));
    CFG3 #( .INIT(8'h20) )  \counter_0_19_i_a2_5[3]  (.A(qusb_fd_in[3])
        , .B(qusb_fd_in[7]), .C(qusb_fd_in[2]), .Y(N_413));
    SLE \data_to_hptdc_0[6]  (.D(qusb_fd_in[6]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[6]));
    SLE \lathed_data_from_hptdc_0[0]  (.D(N_3880_i_0), .CLK(clk_c), 
        .EN(lathed_data_from_hptdc_0_0_sqmuxa_i_0_0_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\lathed_data_from_hptdc_0[0]_net_1 ));
    SLE \run_number_buffer[7]  (.D(\run_number_buffer[0]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\run_number_buffer[7]_net_1 ));
    CFG4 #( .INIT(16'hFFDF) )  \instruction_0_RNI7PQ21[4]  (.A(
        \instruction_0[4]_net_1 ), .B(\instruction_0[5]_net_1 ), .C(
        \instruction_0[6]_net_1 ), .D(\counter_0[6]_net_1 ), .Y(N_3906)
        );
    SLE \run_number[4]  (.D(\run_number_buffer[4]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[4]_net_1 ));
    SLE send_data_to_hptdc_0 (.D(send_data_to_hptdc_0_RNO_net_1), .CLK(
        clk_c), .EN(instruction_046_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_send_data_to_hptdc_0));
    CFG4 #( .INIT(16'hFB00) )  \counter_0_19_i_a2_3[1]  (.A(rst_c), .B(
        \un1_instruction_047_180[1] ), .C(N_3928), .D(
        \counter_0_19_i_a2_3_0[1]_net_1 ), .Y(N_333));
    CFG4 #( .INIT(16'h0001) )  \counter_0_RNO[5]  (.A(
        \counter_0_19_i_1[5]_net_1 ), .B(\counter_0_19_i_2[5]_net_1 ), 
        .C(N_362), .D(N_360), .Y(N_3872_i_0));
    SLE \counter_0[1]  (.D(N_3868_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[1]_net_1 ));
    SLE \instruction_0[2]  (.D(N_3876_i_0), .CLK(clk_c), .EN(
        N_3878_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  un1_instruction_047_16_i_a2_4_0_o2 (.A(
        instruction_046_net_1), .B(qusb_fd_in[7]), .Y(N_3907_i_0));
    CFG3 #( .INIT(8'hF4) )  lathed_data_from_hptdc_0_0_sqmuxa_i_0_0 (
        .A(old_data_received_from_hptdc_0_net_1), .B(
        JTAG_0_data_received_from_hptdc), .C(N_378), .Y(
        lathed_data_from_hptdc_0_0_sqmuxa_i_0_0_net_1));
    SLE \run_number[2]  (.D(\run_number_buffer[2]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[2]_net_1 ));
    CFG4 #( .INIT(16'hFFAB) )  \counter_0_19_i_4_2[3]  (.A(
        \counter_0_19_i_4_0[3]_net_1 ), .B(N_3924), .C(N_3930), .D(
        N_361), .Y(\counter_0_19_i_4_2[3]_net_1 ));
    SLE \data_to_hptdc_0[2]  (.D(qusb_fd_in[2]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[2]));
    CFG4 #( .INIT(16'h00EF) )  \jtag_instruction_0_1_RNO_0[1]  (.A(
        qusb_fd_in[0]), .B(qusb_fd_in[1]), .C(qusb_fd_in[2]), .D(
        N_3921), .Y(un1_instruction_047_1_or));
    CFG4 #( .INIT(16'h0004) )  \instruction_0_RNIOFG92[0]  (.A(N_3919), 
        .B(\counter_0_19_i_o2_2_2_RNI0DV61[2]_net_1 ), .C(rst_c), .D(
        \instruction_0[0]_net_1 ), .Y(un1_N_5_0));
    CFG3 #( .INIT(8'h04) )  \counter_0_19_i_a2_4[3]  (.A(qusb_fd_in[2])
        , .B(qusb_fd_in[1]), .C(N_3921), .Y(N_416));
    SLE \counter_0[6]  (.D(N_3873_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[6]_net_1 ));
    SLE \lathed_data_from_hptdc_0[7]  (.D(N_3586), .CLK(clk_c), .EN(
        lathed_data_from_hptdc_0_0_sqmuxa_i_0_0_net_1), .ALn(VCC_net_1)
        , .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\lathed_data_from_hptdc_0[7]_net_1 ));
    SLE \data_to_hptdc_0[1]  (.D(qusb_fd_in[1]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[1]));
    CFG4 #( .INIT(16'h8020) )  \counter_0_19_i_a2_3[4]  (.A(
        \counter_0_19_i_a2_3_1[4]_net_1 ), .B(\counter_0_2[4] ), .C(
        counter_N_3_mux), .D(un1_instruction_047_c4_i), .Y(N_356));
    CFG3 #( .INIT(8'hDF) )  \instruction_0_8_i_o2_0[0]  (.A(
        \instruction_0[6]_net_1 ), .B(\instruction_0[5]_net_1 ), .C(
        \instruction_0[4]_net_1 ), .Y(N_4009));
    SLE \lathed_data_from_hptdc_0[1]  (.D(N_3881_i_0), .CLK(clk_c), 
        .EN(lathed_data_from_hptdc_0_0_sqmuxa_i_0_0_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\lathed_data_from_hptdc_0[1]_net_1 ));
    CFG1 #( .INIT(2'h1) )  un1_instruction_047_16_i_a2_4_0_o2_RNI557C 
        (.A(N_3907_i_0), .Y(N_3907_i_0_i));
    SLE \threshold_voltage[12]  (.D(\threshold_buffer[12]_net_1 ), 
        .CLK(clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(ControlDecoder_0_threshold_voltage_1[12]));
    CFG4 #( .INIT(16'h0002) )  \counter_0_2_0_a2_RNI6AB51_0[2]  (.A(
        N_427), .B(\counter_0_2[2] ), .C(\counter_0_2[1] ), .D(
        \counter_0_2[0] ), .Y(un1_instruction_047_c4_i));
    CFG4 #( .INIT(16'h4000) )  \counter_0_19_i_a2_4[4]  (.A(
        \counter_0[4]_net_1 ), .B(\counter_0[5]_net_1 ), .C(
        qusb_fd_in[7]), .D(\counter_0[3]_net_1 ), .Y(N_357));
    CFG4 #( .INIT(16'h2080) )  \counter_0_19_i_a2_0[2]  (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[0]), .C(counter_N_3_mux_0_0), .D(
        qusb_fd_in[1]), .Y(N_338));
    SLE \threshold_buffer[3]  (.D(qusb_fd_in[3]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[3]_net_1 ));
    SLE \threshold_voltage[7]  (.D(\threshold_buffer[7]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[7]));
    SLE \qusb_fd_temp[0]  (.D(N_229), .CLK(clk_c), .EN(
        un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[0]));
    CFG2 #( .INIT(4'hE) )  \counter_0_19_i_o2_2_2_0[2]  (.A(
        \counter_0[1]_net_1 ), .B(\counter_0[2]_net_1 ), .Y(
        \counter_0_19_i_o2_2_2_0[2]_net_1 ));
    CFG2 #( .INIT(4'hE) )  un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4 
        (.A(N_3538_i_0), .B(N_3907_i_0), .Y(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1));
    CFG4 #( .INIT(16'h0070) )  \counter_0_RNO[2]  (.A(N_463), .B(
        \counter_0_19_i_a2_3_0[2]_net_1 ), .C(N_3869_i_1_0), .D(N_342), 
        .Y(N_3869_i_0));
    CFG4 #( .INIT(16'h0004) )  \counter_0_19_i_a2_2[5]  (.A(
        qusb_fd_in[7]), .B(N_419), .C(qusb_fd_in[0]), .D(qusb_fd_in[2])
        , .Y(N_363));
    CFG4 #( .INIT(16'h4000) )  \counter_0_19_i_a2_8[0]  (.A(
        qusb_fd_in[2]), .B(counter_N_3_mux_0_0), .C(qusb_fd_in[3]), .D(
        qusb_fd_in[0]), .Y(N_414));
    CFG4 #( .INIT(16'hFFFB) )  run_number_1_sqmuxa_0_a3_0_o2_RNIRQTS (
        .A(N_408), .B(N_3930), .C(rst_c), .D(N_238), .Y(N_252));
    CFG3 #( .INIT(8'hFB) )  \counter_0_19_i_o2_6[2]  (.A(N_3894), .B(
        latched_data_received_from_hptdc_0_RNI789Q_net_1), .C(
        \counter_0_19_i_o2_6_0[2]_net_1 ), .Y(N_3928));
    SLE \run_number[5]  (.D(\run_number_buffer[5]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[5]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \counter_0_RNO[6]  (.A(
        \counter_0_19_i_6[6]_net_1 ), .B(N_417), .Y(N_3873_i_0));
    CFG2 #( .INIT(4'h9) )  \counter_0_2_0_a2_RNIR09C[1]  (.A(
        \counter_0_2[0] ), .B(\counter_0_2[1] ), .Y(
        \un1_instruction_047_180[1] ));
    CFG3 #( .INIT(8'h04) )  
        latched_data_received_from_hptdc_0_1_i_0_a2_1 (.A(N_3930), .B(
        instruction_046_net_1), .C(N_3932), .Y(N_491));
    CFG4 #( .INIT(16'hECEE) )  \counter_0_19_i_0_0[0]  (.A(N_3922), .B(
        N_415), .C(\counter_0_19_i_a2_1_0[0]_net_1 ), .D(N_3952), .Y(
        \counter_0_19_i_0_0[0]_net_1 ));
    SLE \run_number_buffer[0]  (.D(qusb_fd_in[0]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[0]_net_1 ));
    CFG3 #( .INIT(8'h54) )  \counter_0_19_i_a2_1[1]  (.A(
        \counter_0[1]_net_1 ), .B(N_3910), .C(N_3911), .Y(N_331));
    GND GND (.Y(GND_net_1));
    CFG4 #( .INIT(16'hFFFE) )  \counter_0_19_i_o2_2[1]  (.A(
        qusb_fd_in[13]), .B(\counter_0_19_i_o2_2_7[1]_net_1 ), .C(
        \counter_0_19_i_o2_2_6[1]_net_1 ), .D(
        \counter_0_19_i_o2_2_0[1]_net_1 ), .Y(N_3905));
    CFG4 #( .INIT(16'h222E) )  \instruction_0_RNO[6]  (.A(
        qusb_fd_in[6]), .B(qusb_fd_in[7]), .C(N_3919), .D(N_3925), .Y(
        N_260_i_0));
    CFG3 #( .INIT(8'hEC) )  \counter_0_19_i_o2[2]  (.A(qusb_fd_in[3]), 
        .B(qusb_fd_in[2]), .C(qusb_fd_in[1]), .Y(N_3940));
    CFG3 #( .INIT(8'hF1) )  \counter_0_19_i_2[5]  (.A(N_3921), .B(
        qusb_fd_in[2]), .C(N_361), .Y(\counter_0_19_i_2[5]_net_1 ));
    CFG4 #( .INIT(16'hBBF5) )  
        latched_data_received_from_hptdc_0_RNI789Q (.A(
        \instruction_0[0]_net_1 ), .B(i4_i), .C(
        latched_data_received_from_hptdc_0_net_1), .D(
        \instruction_0[3]_net_1 ), .Y(
        latched_data_received_from_hptdc_0_RNI789Q_net_1));
    CFG4 #( .INIT(16'h0080) )  un1_instruction_047_14_i_0_i_a2_0 (.A(
        \instruction_0[3]_net_1 ), .B(qusb_fd_in[7]), .C(i4_i), .D(
        \instruction_0[0]_net_1 ), .Y(N_385));
    CFG2 #( .INIT(4'h2) )  lathed_data_from_hptdc_024_inst_1 (.A(
        JTAG_0_data_received_from_hptdc), .B(
        old_data_received_from_hptdc_0_net_1), .Y(
        lathed_data_from_hptdc_024));
    CFG4 #( .INIT(16'hFCDC) )  latched_data_received_from_hptdc_0_RNO 
        (.A(N_491), .B(lathed_data_from_hptdc_024), .C(
        latched_data_received_from_hptdc_0_net_1), .D(N_3953), .Y(
        N_3535_i_0));
    SLE \counter_0[4]  (.D(N_3871_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[4]_net_1 ));
    SLE \run_number_buffer[4]  (.D(qusb_fd_in[4]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[4]_net_1 ));
    CFG3 #( .INIT(8'h10) )  \counter_0_19_i_a2_5[1]  (.A(qusb_fd_in[1])
        , .B(N_3921), .C(qusb_fd_in[0]), .Y(N_335));
    CFG3 #( .INIT(8'h10) )  \counter_0_19_i_a2_3_0[2]  (.A(N_3906), .B(
        \un1_instruction_047_180[2] ), .C(
        \counter_0_19_i_a2_12_0_0[0]_net_1 ), .Y(
        \counter_0_19_i_a2_3_0[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \counter_0_19_i_a2_5[5]  (.A(
        counter_N_3_mux), .B(N_3891), .Y(N_463));
    CFG4 #( .INIT(16'hFAF8) )  \counter_0_19_i_4[4]  (.A(rst_c), .B(
        qusb_fd_in[2]), .C(N_356), .D(N_3921), .Y(
        \counter_0_19_i_4[4]_net_1 ));
    CFG4 #( .INIT(16'hBFF0) )  \counter_0_19_i_3_1[1]  (.A(
        qusb_fd_in[0]), .B(qusb_fd_in[3]), .C(qusb_fd_in[1]), .D(
        qusb_fd_in[2]), .Y(\counter_0_19_i_3_1[1]_net_1 ));
    CFG3 #( .INIT(8'hD8) )  \instruction_0_8_i_m2[2]  (.A(
        qusb_fd_in[7]), .B(\instruction_0[2]_net_1 ), .C(qusb_fd_in[2])
        , .Y(N_228));
    CFG2 #( .INIT(4'h2) )  \qusb_fd_temp_10[5]  (.A(
        \run_number[5]_net_1 ), .B(qusb_fd_in[7]), .Y(
        \qusb_fd_temp_10[5]_net_1 ));
    CFG4 #( .INIT(16'hFFEC) )  \counter_0_19_i_4[6]  (.A(rst_c), .B(
        N_361), .C(N_3921), .D(\counter_0_19_i_2[6]_net_1 ), .Y(
        \counter_0_19_i_4[6]_net_1 ));
    SLE \threshold_buffer[4]  (.D(qusb_fd_in[4]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[4]_net_1 ));
    CFG3 #( .INIT(8'h2D) )  \counter_0_19_i_a2_1_RNO[5]  (.A(
        un1_instruction_047_c4_i), .B(\counter_0_2[4] ), .C(N_419), .Y(
        \un1_instruction_047_180[5] ));
    CFG4 #( .INIT(16'hFFEC) )  \counter_0_19_i_7[1]  (.A(N_463), .B(
        \counter_0_19_i_5[1]_net_1 ), .C(
        \counter_0_19_i_a2_2_0[1]_net_1 ), .D(N_335), .Y(
        \counter_0_19_i_7[1]_net_1 ));
    SLE \data_to_hptdc_0[3]  (.D(qusb_fd_in[3]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[3]));
    CFG4 #( .INIT(16'h0002) )  old_qusb_wen_RNIKT951 (.A(qusb_wen_c), 
        .B(qusb_fd_in[7]), .C(N_3905), .D(old_qusb_wen_net_1), .Y(
        counter_N_3_mux_0_0));
    CFG2 #( .INIT(4'hE) )  \counter_0_19_i_o2_5[0]  (.A(
        \counter_0[4]_net_1 ), .B(\counter_0[3]_net_1 ), .Y(N_3891));
    CFG4 #( .INIT(16'h00F7) )  \counter_0_19_i_5_1[2]  (.A(
        qusb_fd_in[1]), .B(qusb_fd_in[2]), .C(N_3921), .D(N_345), .Y(
        \counter_0_19_i_5_1[2]_net_1 ));
    SLE \threshold_buffer[1]  (.D(qusb_fd_in[1]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[1]_net_1 ));
    CFG3 #( .INIT(8'hFD) )  \counter_0_19_i_o2_8[3]  (.A(qusb_fd_in[7])
        , .B(rst_c), .C(N_3906), .Y(N_3932));
    CFG4 #( .INIT(16'hAB00) )  \counter_0_19_i_a2_6[5]  (.A(N_3910), 
        .B(\counter_0_19_i_a2_a0_3[5]_net_1 ), .C(
        \counter_0_19_i_a2_a1_2[5]_net_1 ), .D(N_419), .Y(N_360));
    CFG3 #( .INIT(8'h40) )  \counter_0_19_i_a2_3[5]  (.A(qusb_fd_in[1])
        , .B(counter_N_3_mux_0_0), .C(qusb_fd_in[0]), .Y(N_364));
    CFG3 #( .INIT(8'h10) )  threshold_voltage_1_sqmuxa_0_a3_0_a2 (.A(
        \instruction_0[0]_net_1 ), .B(N_239), .C(N_491), .Y(
        threshold_voltage_1_sqmuxa));
    CFG3 #( .INIT(8'hE4) )  \qusb_fd_temp_10[1]  (.A(qusb_fd_in[7]), 
        .B(\run_number[1]_net_1 ), .C(
        \lathed_data_from_hptdc_0[1]_net_1 ), .Y(
        \qusb_fd_temp_10[1]_net_1 ));
    SLE \run_number_buffer[6]  (.D(qusb_fd_in[6]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[6]_net_1 ));
    SLE old_data_received_from_hptdc_0 (.D(
        JTAG_0_data_received_from_hptdc), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(
        old_data_received_from_hptdc_0_net_1));
    CFG4 #( .INIT(16'hF7F0) )  \counter_0_19_i_1[2]  (.A(N_3891), .B(
        qusb_fd_in[7]), .C(N_338), .D(\counter_0_19_i_1_1[2]_net_1 ), 
        .Y(\counter_0_19_i_1[2]_net_1 ));
    CFG4 #( .INIT(16'hF1F0) )  un1_instruction_047_12_i_0_0 (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[0]), .C(N_378), .D(N_379_2), .Y(
        un1_instruction_047_12_i_0_0_net_1));
    SLE \threshold_voltage[11]  (.D(\threshold_buffer[11]_net_1 ), 
        .CLK(clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(ControlDecoder_0_threshold_voltage_1[11]));
    CFG2 #( .INIT(4'hE) )  un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3 
        (.A(N_3539_i_0), .B(N_3907_i_0), .Y(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1));
    SLE \threshold_buffer[2]  (.D(qusb_fd_in[2]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[2]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    CFG3 #( .INIT(8'hA8) )  \counter_0_19_i_a0[3]  (.A(N_427), .B(
        N_3910), .C(N_3911), .Y(\counter_0_19_i_a0[3]_net_1 ));
    CFG3 #( .INIT(8'h82) )  un1_instruction_047_14_i_0_i_o2_1 (.A(
        \instruction_0[2]_net_1 ), .B(\instruction_0[3]_net_1 ), .C(
        i4_i), .Y(N_3894));
    CFG2 #( .INIT(4'h8) )  un1_instruction_047_12_i_0_a2_1 (.A(N_3891), 
        .B(\counter_0[5]_net_1 ), .Y(N_408));
    CFG2 #( .INIT(4'h4) )  instruction_046 (.A(old_qusb_wen_net_1), .B(
        qusb_wen_c), .Y(instruction_046_net_1));
    CFG2 #( .INIT(4'h8) )  \counter_0_19_i_a2_12_0_0[0]  (.A(
        instruction_046_net_1), .B(qusb_fd_in[7]), .Y(
        \counter_0_19_i_a2_12_0_0[0]_net_1 ));
    SLE \threshold_buffer[7]  (.D(\threshold_buffer[0]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[7]_net_1 ));
    CFG4 #( .INIT(16'hFBFA) )  \counter_0_19_i_3[1]  (.A(
        \counter_0_19_i_0[1]_net_1 ), .B(\counter_0_19_i_3_1[1]_net_1 )
        , .C(N_415), .D(counter_N_3_mux_0_0), .Y(
        \counter_0_19_i_3[1]_net_1 ));
    CFG3 #( .INIT(8'h13) )  run_number_1_sqmuxa_0_a3_0_o2_RNIVQ543 (.A(
        qusb_fd_in[7]), .B(N_3910), .C(N_252), .Y(N_3539_i_0));
    SLE \run_number_buffer[1]  (.D(qusb_fd_in[1]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[1]_net_1 ));
    CFG4 #( .INIT(16'h22A8) )  \counter_0_19_i_a2_4[0]  (.A(N_485), .B(
        N_3928), .C(rst_c), .D(\counter_0_2[0] ), .Y(N_327));
    CFG4 #( .INIT(16'h0040) )  \counter_0_19_i_a2_2_1[3]  (.A(
        \counter_0[5]_net_1 ), .B(instruction_046_net_1), .C(
        counter_N_3_mux), .D(N_3932), .Y(
        \counter_0_19_i_a2_2_1[3]_net_1 ));
    CFG3 #( .INIT(8'hC8) )  \counter_0_19_i_4_0[3]  (.A(
        \counter_0_19_i_a2_1_0[3]_net_1 ), .B(N_427), .C(N_413), .Y(
        \counter_0_19_i_4_0[3]_net_1 ));
    CFG4 #( .INIT(16'h0020) )  
        lathed_data_from_hptdc_0_12_595_i_i_a3_0_a2 (.A(
        \lathed_data_from_hptdc_0[0]_net_1 ), .B(
        \instruction_0[2]_net_1 ), .C(i4_i), .D(
        lathed_data_from_hptdc_024), .Y(N_3586));
    CFG3 #( .INIT(8'h31) )  \instruction_0_RNISFOG4[0]  (.A(
        qusb_fd_in[7]), .B(N_3910), .C(un1_N_5_0), .Y(N_3538_i_0));
    CFG4 #( .INIT(16'hF4F0) )  \counter_0_19_i_2[0]  (.A(N_3952), .B(
        qusb_fd_in[3]), .C(N_414), .D(counter_N_3_mux_0_0), .Y(
        \counter_0_19_i_2[0]_net_1 ));
    CFG4 #( .INIT(16'hFFEC) )  \counter_0_19_i_1[4]  (.A(N_176_i), .B(
        N_357), .C(counter_N_3_mux_0_0), .D(N_355), .Y(
        \counter_0_19_i_1[4]_net_1 ));
    CFG4 #( .INIT(16'hFF8A) )  \counter_0_19_i_2[2]  (.A(rst_c), .B(
        N_3940), .C(counter_N_3_mux_0_0), .D(
        \counter_0_19_i_1[2]_net_1 ), .Y(\counter_0_19_i_2[2]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \counter_0_RNIEPTI[5]  (.A(
        \counter_0[5]_net_1 ), .B(rst_c), .Y(N_419));
    CFG3 #( .INIT(8'h8F) )  instruction_046_RNITMLR1 (.A(N_3906), .B(
        qusb_fd_in[7]), .C(instruction_046_net_1), .Y(N_3910));
    CFG2 #( .INIT(4'h4) )  \counter_0_19_i_a2_9[0]  (.A(
        counter_N_3_mux_0_0), .B(rst_c), .Y(N_415));
    SLE \qusb_fd_temp[7]  (.D(\qusb_fd_temp_10[7]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[7]));
    SLE \qusb_fd_temp[2]  (.D(\qusb_fd_temp_10[2]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[2]));
    SLE \qusb_fd_temp[3]  (.D(\qusb_fd_temp_10[3]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[3]));
    CFG3 #( .INIT(8'hA9) )  \counter_0_2_0_a2_RNIQIDI[2]  (.A(
        \counter_0_2[2] ), .B(\counter_0_2[1] ), .C(\counter_0_2[0] ), 
        .Y(\un1_instruction_047_180[2] ));
    SLE \threshold_buffer[13]  (.D(\threshold_buffer[6]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[13]_net_1 ));
    SLE get_data_from_hptdc_0 (.D(get_data_from_hptdc_0_1_0_0_net_1), 
        .CLK(clk_c), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        ControlDecoder_0_get_data_from_hptdc_0));
    CFG4 #( .INIT(16'hFFFE) )  \counter_0_19_i_o2_2_2[2]  (.A(
        \counter_0[0]_net_1 ), .B(\counter_0[5]_net_1 ), .C(
        \counter_0[2]_net_1 ), .D(\counter_0[1]_net_1 ), .Y(
        \counter_0_19_i_o2_2_2[2]_net_1 ));
    SLE \threshold_buffer[11]  (.D(\threshold_buffer[4]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[11]_net_1 ));
    SLE \data_to_hptdc_0[4]  (.D(qusb_fd_in[4]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[4]));
    SLE \run_number[1]  (.D(\run_number_buffer[1]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[1]_net_1 ));
    CFG4 #( .INIT(16'hFFCE) )  \counter_0_19_i_3[4]  (.A(qusb_fd_in[7])
        , .B(N_361), .C(N_3930), .D(\counter_0_19_i_1[4]_net_1 ), .Y(
        \counter_0_19_i_3[4]_net_1 ));
    CFG4 #( .INIT(16'h4044) )  \counter_0_19_i_a2[0]  (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[1]), .C(N_3922), .D(N_3921), .Y(
        N_322));
    CFG4 #( .INIT(16'h222E) )  \instruction_0_RNO[4]  (.A(
        qusb_fd_in[4]), .B(qusb_fd_in[7]), .C(N_3919), .D(N_3925), .Y(
        N_259_i_0));
    CFG4 #( .INIT(16'h4C8C) )  \instruction_0_RNIKSSF1[2]  (.A(i4_i), 
        .B(latched_data_received_from_hptdc_0_RNI789Q_net_1), .C(
        \instruction_0[2]_net_1 ), .D(\instruction_0[3]_net_1 ), .Y(
        counter_N_3_mux));
    CFG3 #( .INIT(8'h3B) )  \counter_0_19_i_o2[5]  (.A(qusb_fd_in[2]), 
        .B(qusb_fd_in[1]), .C(qusb_fd_in[0]), .Y(N_3927));
    CFG4 #( .INIT(16'h0014) )  \counter_0_19_i_a2_1_0[3]  (.A(
        qusb_fd_in[7]), .B(qusb_fd_in[2]), .C(qusb_fd_in[1]), .D(
        qusb_fd_in[0]), .Y(\counter_0_19_i_a2_1_0[3]_net_1 ));
    SLE \threshold_buffer[0]  (.D(qusb_fd_in[0]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[0]_net_1 ));
    CFG4 #( .INIT(16'hFFEF) )  \counter_0_19_i_o2_0[4]  (.A(N_3910), 
        .B(\instruction_0_8[3] ), .C(N_227), .D(N_3911), .Y(N_254));
    CFG4 #( .INIT(16'h00FE) )  \jtag_instruction_0_1_RNO[0]  (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[1]), .C(N_3921), .D(
        \jtag_instruction_0_1_1_i_0_0[0]_net_1 ), .Y(N_3534_i_0));
    SLE \counter_0[5]  (.D(N_3872_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[5]_net_1 ));
    CFG3 #( .INIT(8'h08) )  un1_instruction_047_12_i_0_0_a2 (.A(
        un1_instruction_047_12_i_0_0_a2_1_net_1), .B(
        instruction_046_net_1), .C(N_3932), .Y(N_378));
    SLE \data_to_hptdc_0[7]  (.D(ControlDecoder_0_data_to_hptdc_0[0]), 
        .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[7]));
    CFG2 #( .INIT(4'h1) )  \counter_0_RNICNTI[3]  (.A(
        \counter_0[3]_net_1 ), .B(rst_c), .Y(N_427));
    CFG3 #( .INIT(8'hAB) )  \counter_0_19_i_o2_1[0]  (.A(rst_c), .B(
        \counter_0[0]_net_1 ), .C(qusb_fd_in[7]), .Y(N_3922));
    SLE \threshold_buffer[10]  (.D(\threshold_buffer[3]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[10]_net_1 ));
    CFG4 #( .INIT(16'h0040) )  \counter_0_19_i_a2_1[5]  (.A(
        \un1_instruction_047_180[5] ), .B(N_463), .C(
        instruction_046_net_1), .D(N_3932), .Y(N_362));
    CFG4 #( .INIT(16'hDCD8) )  send_data_to_hptdc_0_RNO (.A(N_247), .B(
        ControlDecoder_0_send_data_to_hptdc_0), .C(m22_i_a2_0_1), .D(
        m22_i_o2_0), .Y(send_data_to_hptdc_0_RNO_net_1));
    CFG2 #( .INIT(4'h2) )  \instruction_0_8_0_a2[3]  (.A(qusb_fd_in[3])
        , .B(qusb_fd_in[7]), .Y(\instruction_0_8[3] ));
    SLE \data_to_hptdc_0[5]  (.D(qusb_fd_in[5]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[5]));
    CFG3 #( .INIT(8'h3A) )  \counter_0_19_i_o2_2_2_RNI0DV61[2]  (.A(
        \counter_0_19_i_o2_2_2[2]_net_1 ), .B(\counter_0[5]_net_1 ), 
        .C(N_3891), .Y(\counter_0_19_i_o2_2_2_RNI0DV61[2]_net_1 ));
    CFG4 #( .INIT(16'hFDFF) )  run_number_1_sqmuxa_0_a3_0_o2 (.A(
        \instruction_0[0]_net_1 ), .B(i4_i), .C(
        \instruction_0[2]_net_1 ), .D(\instruction_0[3]_net_1 ), .Y(
        N_238));
    SLE \threshold_voltage[4]  (.D(\threshold_buffer[4]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[4]));
    CFG2 #( .INIT(4'h2) )  \qusb_fd_temp_10[6]  (.A(
        \run_number[6]_net_1 ), .B(qusb_fd_in[7]), .Y(
        \qusb_fd_temp_10[6]_net_1 ));
    CFG2 #( .INIT(4'hE) )  un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4 
        (.A(N_3540_i_0), .B(N_3907_i_0), .Y(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1));
    SLE \threshold_buffer[9]  (.D(\threshold_buffer[2]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[9]_net_1 ));
    CFG4 #( .INIT(16'h1DD1) )  \counter_0_19_i_m2[4]  (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[7]), .C(\counter_0_2[4] ), .D(
        un1_instruction_047_c4_i), .Y(N_227));
    SLE \threshold_buffer[12]  (.D(\threshold_buffer[5]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[12]_net_1 ));
    CFG4 #( .INIT(16'h7530) )  get_data_from_hptdc_0_1_0_0 (.A(
        N_3907_i_0), .B(N_3921), .C(qusb_fd_in[0]), .D(
        ControlDecoder_0_get_data_from_hptdc_0), .Y(
        get_data_from_hptdc_0_1_0_0_net_1));
    SLE old_qusb_wen (.D(qusb_wen_c), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(old_qusb_wen_net_1));
    CFG3 #( .INIT(8'h54) )  \counter_0_19_i_a2_2[0]  (.A(
        \counter_0[0]_net_1 ), .B(N_3910), .C(N_3911), .Y(N_325));
    SLE \instruction_0[0]  (.D(N_3874_i_0), .CLK(clk_c), .EN(
        N_3878_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[0]_net_1 ));
    CFG3 #( .INIT(8'h04) )  send_data_to_hptdc_0_RNO_1 (.A(N_3930), .B(
        JTAG_0_jtag_bus_in_use), .C(N_3919), .Y(m22_i_a2_0_1));
    CFG2 #( .INIT(4'h8) )  \counter_0_19_i_a2_11[0]  (.A(N_3891), .B(
        N_417), .Y(N_485));
    CFG3 #( .INIT(8'h80) )  \counter_0_19_i_a2_0[5]  (.A(qusb_fd_in[3])
        , .B(N_3927), .C(counter_N_3_mux_0_0), .Y(N_361));
    CFG2 #( .INIT(4'h2) )  \instruction_0_8_0_a2[5]  (.A(qusb_fd_in[5])
        , .B(qusb_fd_in[7]), .Y(\instruction_0_8[5] ));
    CFG4 #( .INIT(16'h0040) )  un1_instruction_047_12_i_0_0_a2_1 (.A(
        N_408), .B(N_3930), .C(
        latched_data_received_from_hptdc_0_net_1), .D(N_3953), .Y(
        un1_instruction_047_12_i_0_0_a2_1_net_1));
    CFG3 #( .INIT(8'hF2) )  \instruction_0_8_i_o2_0[1]  (.A(
        JTAG_0_jtag_bus_in_use), .B(\instruction_0[0]_net_1 ), .C(
        N_4009), .Y(N_3925));
    CFG3 #( .INIT(8'h10) )  \counter_0_19_i_a2_2_0[1]  (.A(N_3906), .B(
        \un1_instruction_047_180[1] ), .C(
        \counter_0_19_i_a2_12_0_0[0]_net_1 ), .Y(
        \counter_0_19_i_a2_2_0[1]_net_1 ));
    SLE \instruction_0[5]  (.D(\instruction_0_8[5] ), .CLK(clk_c), .EN(
        N_3878_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[5]_net_1 ));
    SLE \threshold_voltage[8]  (.D(\threshold_buffer[8]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[8]));
    CFG4 #( .INIT(16'hFB00) )  \counter_0_19_i_a2_4[2]  (.A(rst_c), .B(
        \un1_instruction_047_180[2] ), .C(N_3928), .D(
        \counter_0_19_i_a2_4_0[2]_net_1 ), .Y(N_342));
    CFG4 #( .INIT(16'h444E) )  \instruction_0_RNO[0]  (.A(
        qusb_fd_in[7]), .B(qusb_fd_in[0]), .C(N_3953), .D(N_4009), .Y(
        N_3874_i_0));
    SLE \threshold_voltage[6]  (.D(\threshold_buffer[6]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[6]));
    CFG2 #( .INIT(4'h2) )  \qusb_fd_temp_10[3]  (.A(
        \run_number[3]_net_1 ), .B(qusb_fd_in[7]), .Y(
        \qusb_fd_temp_10[3]_net_1 ));
    CFG3 #( .INIT(8'hF7) )  threshold_voltage_1_sqmuxa_0_a3_0_o2 (.A(
        \instruction_0[2]_net_1 ), .B(\instruction_0[3]_net_1 ), .C(
        i4_i), .Y(N_239));
    CFG3 #( .INIT(8'h54) )  \counter_0_19_i_1_1[6]  (.A(rst_c), .B(
        \counter_0[6]_net_1 ), .C(qusb_fd_in[7]), .Y(
        \counter_0_19_i_1_1[6]_net_1 ));
    CFG4 #( .INIT(16'h0200) )  \counter_0_19_i_a2_7[2]  (.A(
        qusb_fd_in[3]), .B(qusb_fd_in[0]), .C(qusb_fd_in[1]), .D(
        counter_N_3_mux_0_0), .Y(N_345));
    CFG4 #( .INIT(16'hFFF4) )  \counter_0_19_i_3[0]  (.A(N_3930), .B(
        qusb_fd_in[7]), .C(N_322), .D(\counter_0_19_i_0_0[0]_net_1 ), 
        .Y(\counter_0_19_i_3[0]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \counter_0_2_0_a2[0]  (.A(
        \counter_0[0]_net_1 ), .B(rst_c), .Y(\counter_0_2[0] ));
    SLE \run_number[6]  (.D(\run_number_buffer[6]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[6]_net_1 ));
    CFG4 #( .INIT(16'h000B) )  \counter_0_19_i_a2[3]  (.A(N_483), .B(
        \un1_instruction_047_180[3] ), .C(N_3924), .D(
        \counter_0[3]_net_1 ), .Y(N_347));
    SLE \threshold_buffer[5]  (.D(qusb_fd_in[5]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[5]_net_1 ));
    CFG4 #( .INIT(16'hFFAB) )  \counter_0_19_i_1[5]  (.A(N_363), .B(
        N_3924), .C(N_3930), .D(N_364), .Y(\counter_0_19_i_1[5]_net_1 )
        );
    CFG4 #( .INIT(16'hAAA8) )  un1_instruction_047_14_i_0_i_a2 (.A(
        qusb_fd_in[7]), .B(rst_c), .C(N_3894), .D(N_3930), .Y(N_384));
    CFG4 #( .INIT(16'hFFCE) )  \counter_0_19_i_5[1]  (.A(qusb_fd_in[7])
        , .B(N_414), .C(N_3930), .D(\counter_0_19_i_3[1]_net_1 ), .Y(
        \counter_0_19_i_5[1]_net_1 ));
    SLE \qusb_fd_temp[4]  (.D(\qusb_fd_temp_10[4]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[4]));
    SLE \qusb_fd_temp[1]  (.D(\qusb_fd_temp_10[1]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[1]));
    SLE \threshold_buffer[6]  (.D(qusb_fd_in[6]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\threshold_buffer[6]_net_1 ));
    CFG3 #( .INIT(8'hE4) )  \qusb_fd_temp_10[7]  (.A(qusb_fd_in[7]), 
        .B(\run_number[7]_net_1 ), .C(
        \lathed_data_from_hptdc_0[7]_net_1 ), .Y(
        \qusb_fd_temp_10[7]_net_1 ));
    CFG2 #( .INIT(4'h8) )  \jtag_instruction_0_1_RNO[1]  (.A(
        qusb_fd_in[1]), .B(qusb_fd_in[2]), .Y(N_3955_i_0));
    SLE \threshold_voltage[13]  (.D(\threshold_buffer[13]_net_1 ), 
        .CLK(clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(ControlDecoder_0_threshold_voltage_1[13]));
    CFG2 #( .INIT(4'h6) )  \counter_0_19_i_x2[1]  (.A(qusb_fd_in[1]), 
        .B(qusb_fd_in[3]), .Y(N_176_i));
    CFG4 #( .INIT(16'hAEFF) )  un1_instruction_047_12_i_0_o2_0 (.A(
        \instruction_0[3]_net_1 ), .B(\instruction_0[2]_net_1 ), .C(
        i4_i), .D(\instruction_0[0]_net_1 ), .Y(N_3953));
    SLE \threshold_voltage[1]  (.D(\threshold_buffer[1]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[1]));
    SLE \instruction_0[6]  (.D(N_260_i_0), .CLK(clk_c), .EN(N_3878_i_0)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[6]_net_1 ));
    SLE \instruction_0[4]  (.D(N_259_i_0), .CLK(clk_c), .EN(N_3878_i_0)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[4]_net_1 ));
    CFG4 #( .INIT(16'hFFEF) )  send_data_to_hptdc_0_RNO_0 (.A(
        \instruction_0[0]_net_1 ), .B(N_3906), .C(qusb_fd_in[7]), .D(
        rst_c), .Y(N_247));
    CFG4 #( .INIT(16'hEFEE) )  \counter_0_19_i_6[6]  (.A(N_416), .B(
        \counter_0_19_i_4[6]_net_1 ), .C(\counter_0[6]_net_1 ), .D(
        N_3911), .Y(\counter_0_19_i_6[6]_net_1 ));
    CFG3 #( .INIT(8'h80) )  \counter_0_19_i_a2_8_2[2]  (.A(
        qusb_fd_in[3]), .B(qusb_fd_in[1]), .C(counter_N_3_mux_0_0), .Y(
        N_379_2));
    SLE \qusb_fd_temp[5]  (.D(\qusb_fd_temp_10[5]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[5]));
    SLE \threshold_voltage[2]  (.D(\threshold_buffer[2]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[2]));
    CFG2 #( .INIT(4'h2) )  \counter_0_19_i_a2_8_0[0]  (.A(
        qusb_fd_in[0]), .B(qusb_fd_in[2]), .Y(
        \counter_0_19_i_a2_8_0[2] ));
    CFG2 #( .INIT(4'hD) )  \counter_0_19_i_o2_2_0[1]  (.A(
        qusb_fd_in[4]), .B(qusb_fd_in[10]), .Y(
        \counter_0_19_i_o2_2_0[1]_net_1 ));
    CFG3 #( .INIT(8'hE4) )  \qusb_fd_temp_10_i_m2_i_m2[0]  (.A(
        qusb_fd_in[7]), .B(\run_number[0]_net_1 ), .C(
        \lathed_data_from_hptdc_0[0]_net_1 ), .Y(N_229));
    CFG4 #( .INIT(16'h0004) )  \counter_0_19_i_a2_a1_2[5]  (.A(
        qusb_fd_in[7]), .B(qusb_fd_in[1]), .C(N_3905), .D(N_413), .Y(
        \counter_0_19_i_a2_a1_2[5]_net_1 ));
    CFG4 #( .INIT(16'hFBFA) )  \counter_0_19_i_4_4[3]  (.A(
        \counter_0_19_i_4_2[3]_net_1 ), .B(
        \un1_instruction_047_180[3] ), .C(N_416), .D(
        \counter_0_19_i_a2_2_1[3]_net_1 ), .Y(
        \counter_0_19_i_4_4[3]_net_1 ));
    CFG3 #( .INIT(8'h80) )  \counter_0_19_i_a2_1_0[0]  (.A(
        qusb_fd_in[3]), .B(qusb_fd_in[1]), .C(qusb_fd_in[0]), .Y(
        \counter_0_19_i_a2_1_0[0]_net_1 ));
    SLE \counter_0[3]  (.D(N_3870_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[3]_net_1 ));
    CFG3 #( .INIT(8'h31) )  
        threshold_voltage_1_sqmuxa_0_a3_0_o2_RNI0QB74 (.A(
        qusb_fd_in[7]), .B(N_3910), .C(un1_N_5), .Y(N_3540_i_0));
    CFG3 #( .INIT(8'h08) )  \counter_0_19_i_a2_3_0[0]  (.A(
        \counter_0_19_i_a2_12_0_0[0]_net_1 ), .B(\counter_0_2[0] ), .C(
        N_3906), .Y(\counter_0_19_i_a2_3_0[0]_net_1 ));
    CFG4 #( .INIT(16'h5556) )  \counter_0_2_0_a2_RNI6AB51[2]  (.A(
        N_427), .B(\counter_0_2[2] ), .C(\counter_0_2[1] ), .D(
        \counter_0_2[0] ), .Y(\un1_instruction_047_180[3] ));
    CFG4 #( .INIT(16'h0C2E) )  \counter_0_19_i_1_1[2]  (.A(N_3940), .B(
        qusb_fd_in[7]), .C(\counter_0_19_i_o2_2_2[2]_net_1 ), .D(
        \counter_0[2]_net_1 ), .Y(\counter_0_19_i_1_1[2]_net_1 ));
    CFG4 #( .INIT(16'h222E) )  \instruction_0_RNO[1]  (.A(
        qusb_fd_in[1]), .B(qusb_fd_in[7]), .C(
        \instruction_0_8_i_o2_0[1]_net_1 ), .D(N_3925), .Y(N_3875_i_0));
    SLE \run_number_buffer[2]  (.D(qusb_fd_in[2]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[2]_net_1 ));
    SLE \jtag_instruction_0_1[0]  (.D(N_3534_i_0), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(
        ControlDecoder_0_jtag_instruction_0[0]));
    CFG3 #( .INIT(8'h4C) )  \counter_0_19_i_a2_3_0[1]  (.A(
        \counter_0_2[1] ), .B(N_485), .C(N_3928), .Y(
        \counter_0_19_i_a2_3_0[1]_net_1 ));
    CFG4 #( .INIT(16'h0004) )  
        threshold_voltage_1_sqmuxa_0_a3_0_o2_RNISP302 (.A(N_239), .B(
        \counter_0_19_i_o2_2_2_RNI0DV61[2]_net_1 ), .C(rst_c), .D(
        \instruction_0[0]_net_1 ), .Y(un1_N_5));
    SLE latched_data_received_from_hptdc_0 (.D(N_3535_i_0), .CLK(clk_c)
        , .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        latched_data_received_from_hptdc_0_net_1));
    CFG4 #( .INIT(16'h222A) )  \instruction_0_RNO[2]  (.A(N_228), .B(
        qusb_fd_in[7]), .C(N_3925), .D(
        \instruction_0_8_i_o2_0[1]_net_1 ), .Y(N_3876_i_0));
    SLE \data_to_hptdc_0[0]  (.D(qusb_fd_in[0]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI1LVS4_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ControlDecoder_0_data_to_hptdc_0[0]));
    CFG4 #( .INIT(16'hCCFD) )  \counter_0_19_i_2[6]  (.A(
        instruction_046_net_1), .B(\counter_0_19_i_1[6]_net_1 ), .C(
        \instruction_0_8[3] ), .D(\counter_0[6]_net_1 ), .Y(
        \counter_0_19_i_2[6]_net_1 ));
    CFG4 #( .INIT(16'hE4EE) )  \counter_0_19_i_m2[0]  (.A(
        qusb_fd_in[7]), .B(N_3905), .C(N_3894), .D(
        latched_data_received_from_hptdc_0_RNI789Q_net_1), .Y(N_3911));
    SLE \instruction_0[3]  (.D(\instruction_0_8[3] ), .CLK(clk_c), .EN(
        N_3878_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\instruction_0[3]_net_1 ));
    CFG4 #( .INIT(16'h4080) )  \counter_0_19_i_a2_2[4]  (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[0]), .C(counter_N_3_mux_0_0), .D(
        qusb_fd_in[1]), .Y(N_355));
    SLE \instruction_0[1]  (.D(N_3875_i_0), .CLK(clk_c), .EN(
        N_3878_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(i4_i));
    SLE \run_number[7]  (.D(\run_number_buffer[7]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[7]_net_1 ));
    SLE \run_number[0]  (.D(\run_number_buffer[0]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[0]_net_1 ));
    CFG4 #( .INIT(16'h0F01) )  \jtag_instruction_0_1_1_i_0_0[0]  (.A(
        qusb_fd_in[0]), .B(qusb_fd_in[1]), .C(
        ControlDecoder_0_jtag_instruction_0[0]), .D(N_3921), .Y(
        \jtag_instruction_0_1_1_i_0_0[0]_net_1 ));
    SLE \threshold_voltage[10]  (.D(\threshold_buffer[10]_net_1 ), 
        .CLK(clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(ControlDecoder_0_threshold_voltage_1[10]));
    SLE \run_number_buffer[3]  (.D(qusb_fd_in[3]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[3]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \counter_0_2_0_a2[2]  (.A(
        \counter_0[2]_net_1 ), .B(rst_c), .Y(\counter_0_2[2] ));
    SLE \counter_0[0]  (.D(N_3867_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[0]_net_1 ));
    SLE \threshold_buffer[8]  (.D(\threshold_buffer[1]_net_1 ), .CLK(
        clk_c), .EN(un1_instruction_047_16_i_a2_4_0_o2_RNI5VIJ4_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\threshold_buffer[8]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \instruction_0_8_i_o2_0_0[1]  (.A(i4_i), .B(
        \instruction_0[3]_net_1 ), .Y(
        \instruction_0_8_i_o2_0[1]_net_1 ));
    CFG2 #( .INIT(4'h4) )  \counter_0_19_i_a2_4[6]  (.A(
        \counter_0[6]_net_1 ), .B(qusb_fd_in[7]), .Y(N_417));
    CFG4 #( .INIT(16'hFFEC) )  \counter_0_19_i_5[0]  (.A(
        \counter_0_19_i_a2_3_0[0]_net_1 ), .B(
        \counter_0_19_i_2[0]_net_1 ), .C(N_463), .D(
        \counter_0_19_i_3[0]_net_1 ), .Y(\counter_0_19_i_5[0]_net_1 ));
    CFG3 #( .INIT(8'h01) )  \counter_0_RNO[0]  (.A(N_327), .B(
        \counter_0_19_i_5[0]_net_1 ), .C(N_325), .Y(N_3867_i_0));
    CFG2 #( .INIT(4'h2) )  \counter_0_2_0_a2[1]  (.A(
        \counter_0[1]_net_1 ), .B(rst_c), .Y(\counter_0_2[1] ));
    SLE \threshold_voltage[3]  (.D(\threshold_buffer[3]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[3]));
    SLE \run_number_buffer[5]  (.D(qusb_fd_in[5]), .CLK(clk_c), .EN(
        un1_instruction_047_16_i_a2_4_0_o2_RNI40DG3_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(N_3907_i_0_i), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(\run_number_buffer[5]_net_1 ));
    CFG4 #( .INIT(16'h00AB) )  \counter_0_19_i_0[1]  (.A(rst_c), .B(
        qusb_fd_in[7]), .C(\counter_0[1]_net_1 ), .D(N_176_i), .Y(
        \counter_0_19_i_0[1]_net_1 ));
    CFG4 #( .INIT(16'h0405) )  \counter_0_RNO[4]  (.A(
        \counter_0_19_i_4[4]_net_1 ), .B(\counter_0[4]_net_1 ), .C(
        \counter_0_19_i_3[4]_net_1 ), .D(N_254), .Y(N_3871_i_0));
    CFG3 #( .INIT(8'h01) )  \counter_0_RNO[3]  (.A(N_347), .B(
        \counter_0_19_i_a0[3]_net_1 ), .C(
        \counter_0_19_i_4_4[3]_net_1 ), .Y(N_3870_i_0));
    CFG4 #( .INIT(16'hFFEF) )  \counter_0_19_i_o2_2_7[1]  (.A(
        qusb_fd_in[14]), .B(qusb_fd_in[8]), .C(qusb_fd_in[6]), .D(
        qusb_fd_in[5]), .Y(\counter_0_19_i_o2_2_7[1]_net_1 ));
    CFG4 #( .INIT(16'h0020) )  \counter_0_19_i_a2_3_1[4]  (.A(
        instruction_046_net_1), .B(N_3906), .C(qusb_fd_in[7]), .D(
        \counter_0[5]_net_1 ), .Y(\counter_0_19_i_a2_3_1[4]_net_1 ));
    CFG3 #( .INIT(8'hFD) )  un1_instruction_047_i_0_a3_0_o2 (.A(
        qusb_fd_in[2]), .B(qusb_fd_in[1]), .C(qusb_fd_in[0]), .Y(
        N_3952));
    SLE \threshold_voltage[0]  (.D(\threshold_buffer[0]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[0]));
    CFG2 #( .INIT(4'hD) )  \counter_0_19_i_o2_7[3]  (.A(qusb_fd_in[7]), 
        .B(rst_c), .Y(N_3924));
    SLE \qusb_fd_temp[6]  (.D(\qusb_fd_temp_10[6]_net_1 ), .CLK(clk_c), 
        .EN(un1_instruction_047_12_i_0_0_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(qusb_fd_temp[6]));
    CFG4 #( .INIT(16'h0080) )  \counter_0_19_i_a2_a0_3[5]  (.A(
        un1_instruction_047_c4_i), .B(counter_N_3_mux), .C(
        qusb_fd_in[7]), .D(\counter_0_2[4] ), .Y(
        \counter_0_19_i_a2_a0_3[5]_net_1 ));
    CFG4 #( .INIT(16'hF8FF) )  \counter_0_19_i_5[2]  (.A(N_379_2), .B(
        \counter_0_19_i_a2_8_0[2] ), .C(\counter_0_19_i_2[2]_net_1 ), 
        .D(\counter_0_19_i_5_1[2]_net_1 ), .Y(
        \counter_0_19_i_5[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  run_number_1_sqmuxa_0_a3_0_a2 (.A(N_491), 
        .B(N_238), .Y(run_number_1_sqmuxa));
    SLE \run_number[3]  (.D(\run_number_buffer[3]_net_1 ), .CLK(clk_c), 
        .EN(run_number_1_sqmuxa), .ALn(VCC_net_1), .ADn(VCC_net_1), 
        .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \run_number[3]_net_1 ));
    CFG4 #( .INIT(16'hFFFE) )  \counter_0_19_i_o2_2_6[1]  (.A(
        qusb_fd_in[15]), .B(qusb_fd_in[12]), .C(qusb_fd_in[11]), .D(
        qusb_fd_in[9]), .Y(\counter_0_19_i_o2_2_6[1]_net_1 ));
    CFG4 #( .INIT(16'h0C0D) )  \counter_0_RNO_0[2]  (.A(N_3910), .B(
        \counter_0[2]_net_1 ), .C(\counter_0_19_i_5[2]_net_1 ), .D(
        N_3911), .Y(N_3869_i_1_0));
    CFG3 #( .INIT(8'h01) )  un1_instruction_047_14_i_0_i_a2_RNISL092 (
        .A(N_3910), .B(N_384), .C(N_385), .Y(N_3878_i_0));
    SLE \counter_0[2]  (.D(N_3869_i_0), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\counter_0[2]_net_1 ));
    CFG3 #( .INIT(8'hCE) )  \instruction_0_RNIDKJL[2]  (.A(
        \instruction_0[2]_net_1 ), .B(\instruction_0[3]_net_1 ), .C(
        i4_i), .Y(N_3919));
    SLE \threshold_voltage[5]  (.D(\threshold_buffer[5]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[5]));
    CFG2 #( .INIT(4'h2) )  \counter_0_2_0_a3_0_a2[4]  (.A(
        \counter_0[4]_net_1 ), .B(rst_c), .Y(\counter_0_2[4] ));
    SLE \threshold_voltage[9]  (.D(\threshold_buffer[9]_net_1 ), .CLK(
        clk_c), .EN(threshold_voltage_1_sqmuxa), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(ControlDecoder_0_threshold_voltage_1[9]));
    CFG4 #( .INIT(16'hFFFE) )  \counter_0_19_i_o2_2[2]  (.A(
        \counter_0[0]_net_1 ), .B(\counter_0[5]_net_1 ), .C(
        \counter_0_19_i_o2_2_2_0[2]_net_1 ), .D(N_3891), .Y(N_3930));
    CFG3 #( .INIT(8'h4C) )  \counter_0_19_i_a2_4_0[2]  (.A(
        \counter_0_2[2] ), .B(N_485), .C(N_3928), .Y(
        \counter_0_19_i_a2_4_0[2]_net_1 ));
    
endmodule


module TDR(
       hptdc_data_0,
       hptdc_data_1,
       hptdc_data_2,
       hptdc_data_3,
       qusb_gpifadr,
       ccu25_data_0,
       qusb_fd,
       ccu25_strobe_out_0,
       ccu25_strobe_out_1,
       clk,
       clk_40,
       hptdc_data_ready_0,
       hptdc_data_ready_1,
       hptdc_data_ready_2,
       hptdc_data_ready_3,
       hptdc_error_0,
       hptdc_error_1,
       hptdc_error_2,
       hptdc_error_3,
       hptdc_serial_out_0,
       hptdc_serial_out_1,
       hptdc_serial_out_2,
       hptdc_serial_out_3,
       hptdc_tdi_0,
       hptdc_tdi_1,
       hptdc_tdi_2,
       hptdc_tdi_3,
       hptdc_token_out_0,
       hptdc_token_out_1,
       hptdc_token_out_2,
       hptdc_token_out_3,
       qusb_ren,
       qusb_wen,
       rst,
       t1,
       dac_din_0,
       dac_din_1,
       dac_ldac_0,
       dac_ldac_1,
       dac_sclk_0,
       dac_sclk_1,
       dac_sync_0,
       dac_sync_1,
       hptdc_bunch_reset_0,
       hptdc_bunch_reset_1,
       hptdc_bunch_reset_2,
       hptdc_bunch_reset_3,
       hptdc_encode_control_0,
       hptdc_encode_control_1,
       hptdc_encode_control_2,
       hptdc_encode_control_3,
       hptdc_event_reset_0,
       hptdc_event_reset_1,
       hptdc_event_reset_2,
       hptdc_event_reset_3,
       hptdc_get_data_0,
       hptdc_get_data_1,
       hptdc_get_data_2,
       hptdc_get_data_3,
       hptdc_serial_bypass_in_0,
       hptdc_serial_bypass_in_1,
       hptdc_serial_bypass_in_2,
       hptdc_serial_bypass_in_3,
       hptdc_serial_in_0,
       hptdc_serial_in_1,
       hptdc_serial_in_2,
       hptdc_serial_in_3,
       hptdc_tck_0,
       hptdc_tck_1,
       hptdc_tck_2,
       hptdc_tck_3,
       hptdc_tdo_0,
       hptdc_tdo_1,
       hptdc_tdo_2,
       hptdc_tdo_3,
       hptdc_tms_0,
       hptdc_tms_1,
       hptdc_tms_2,
       hptdc_tms_3,
       hptdc_token_bypass_in_0,
       hptdc_token_bypass_in_1,
       hptdc_token_bypass_in_2,
       hptdc_token_bypass_in_3,
       hptdc_token_in_0,
       hptdc_token_in_1,
       hptdc_token_in_2,
       hptdc_token_in_3,
       hptdc_trigger_0,
       hptdc_trigger_1,
       hptdc_trigger_2,
       hptdc_trigger_3,
       hptdc_trstn_0,
       hptdc_trstn_1,
       hptdc_trstn_2,
       hptdc_trstn_3,
       qusb_ifclk
    );
input  [31:0] hptdc_data_0;
input  [31:0] hptdc_data_1;
input  [31:0] hptdc_data_2;
input  [31:0] hptdc_data_3;
input  [8:0] qusb_gpifadr;
input  [7:0] ccu25_data_0;
inout  [15:0] qusb_fd;
input  ccu25_strobe_out_0;
input  ccu25_strobe_out_1;
input  clk;
input  clk_40;
input  hptdc_data_ready_0;
input  hptdc_data_ready_1;
input  hptdc_data_ready_2;
input  hptdc_data_ready_3;
input  hptdc_error_0;
input  hptdc_error_1;
input  hptdc_error_2;
input  hptdc_error_3;
input  hptdc_serial_out_0;
input  hptdc_serial_out_1;
input  hptdc_serial_out_2;
input  hptdc_serial_out_3;
input  hptdc_tdi_0;
input  hptdc_tdi_1;
input  hptdc_tdi_2;
input  hptdc_tdi_3;
input  hptdc_token_out_0;
input  hptdc_token_out_1;
input  hptdc_token_out_2;
input  hptdc_token_out_3;
input  qusb_ren;
input  qusb_wen;
input  rst;
input  t1;
output dac_din_0;
output dac_din_1;
output dac_ldac_0;
output dac_ldac_1;
output dac_sclk_0;
output dac_sclk_1;
output dac_sync_0;
output dac_sync_1;
output hptdc_bunch_reset_0;
output hptdc_bunch_reset_1;
output hptdc_bunch_reset_2;
output hptdc_bunch_reset_3;
output hptdc_encode_control_0;
output hptdc_encode_control_1;
output hptdc_encode_control_2;
output hptdc_encode_control_3;
output hptdc_event_reset_0;
output hptdc_event_reset_1;
output hptdc_event_reset_2;
output hptdc_event_reset_3;
output hptdc_get_data_0;
output hptdc_get_data_1;
output hptdc_get_data_2;
output hptdc_get_data_3;
output hptdc_serial_bypass_in_0;
output hptdc_serial_bypass_in_1;
output hptdc_serial_bypass_in_2;
output hptdc_serial_bypass_in_3;
output hptdc_serial_in_0;
output hptdc_serial_in_1;
output hptdc_serial_in_2;
output hptdc_serial_in_3;
output hptdc_tck_0;
output hptdc_tck_1;
output hptdc_tck_2;
output hptdc_tck_3;
output hptdc_tdo_0;
output hptdc_tdo_1;
output hptdc_tdo_2;
output hptdc_tdo_3;
output hptdc_tms_0;
output hptdc_tms_1;
output hptdc_tms_2;
output hptdc_tms_3;
output hptdc_token_bypass_in_0;
output hptdc_token_bypass_in_1;
output hptdc_token_bypass_in_2;
output hptdc_token_bypass_in_3;
output hptdc_token_in_0;
output hptdc_token_in_1;
output hptdc_token_in_2;
output hptdc_token_in_3;
output hptdc_trigger_0;
output hptdc_trigger_1;
output hptdc_trigger_2;
output hptdc_trigger_3;
output hptdc_trstn_0;
output hptdc_trstn_1;
output hptdc_trstn_2;
output hptdc_trstn_3;
output qusb_ifclk;

    wire \ControlDecoder_0_threshold_voltage_1[0] , 
        \ControlDecoder_0_threshold_voltage_1[1] , 
        \ControlDecoder_0_threshold_voltage_1[2] , 
        \ControlDecoder_0_threshold_voltage_1[3] , 
        \ControlDecoder_0_threshold_voltage_1[4] , 
        \ControlDecoder_0_threshold_voltage_1[5] , 
        \ControlDecoder_0_threshold_voltage_1[6] , 
        \ControlDecoder_0_threshold_voltage_1[7] , 
        \ControlDecoder_0_threshold_voltage_1[8] , 
        \ControlDecoder_0_threshold_voltage_1[9] , 
        \ControlDecoder_0_threshold_voltage_1[10] , 
        \ControlDecoder_0_threshold_voltage_1[11] , 
        \ControlDecoder_0_threshold_voltage_1[12] , 
        \ControlDecoder_0_threshold_voltage_1[13] , 
        \ControlDecoder_0_data_to_hptdc_0[0] , 
        \ControlDecoder_0_data_to_hptdc_0[1] , 
        \ControlDecoder_0_data_to_hptdc_0[2] , 
        \ControlDecoder_0_data_to_hptdc_0[3] , 
        \ControlDecoder_0_data_to_hptdc_0[4] , 
        \ControlDecoder_0_data_to_hptdc_0[5] , 
        \ControlDecoder_0_data_to_hptdc_0[6] , 
        \ControlDecoder_0_data_to_hptdc_0[7] , 
        ControlDecoder_0_send_data_to_hptdc_0, 
        ControlDecoder_0_get_data_from_hptdc_0, 
        JTAG_0_data_received_from_hptdc, 
        \ControlDecoder_0_jtag_instruction_0[0] , 
        \ControlDecoder_0_jtag_instruction_0[1] , 
        JTAG_0_jtag_bus_in_use, VCC_net_1, GND_net_1, 
        \qusb_fd_temp[0] , \qusb_fd_temp[1] , \qusb_fd_temp[2] , 
        \qusb_fd_temp[3] , \qusb_fd_temp[4] , \qusb_fd_temp[5] , 
        \qusb_fd_temp[6] , \qusb_fd_temp[7] , clk_c, 
        hptdc_get_data_0_c, hptdc_get_data_1_c, hptdc_get_data_2_c, 
        hptdc_get_data_3_c, hptdc_tdi_0_c, hptdc_token_in_0_c, 
        hptdc_token_in_1_c, hptdc_token_in_2_c, hptdc_token_in_3_c, 
        qusb_wen_c, rst_c, \qusb_fd_in[0] , \qusb_fd_in[1] , 
        \qusb_fd_in[2] , \qusb_fd_in[3] , \qusb_fd_in[4] , 
        \qusb_fd_in[5] , \qusb_fd_in[6] , \qusb_fd_in[8] , 
        \qusb_fd_in[9] , \qusb_fd_in[10] , \qusb_fd_in[11] , 
        \qusb_fd_in[12] , \qusb_fd_in[13] , \qusb_fd_in[14] , 
        \qusb_fd_in[15] , dac_din_1_c, dac_ldac_1_c, dac_sclk_1_c, 
        dac_sync_1_c, hptdc_tdo_0_c, hptdc_tdo_1_c, hptdc_tdo_2_c, 
        hptdc_tdo_3_c, hptdc_tms_0_c, hptdc_tms_1_c, hptdc_tms_2_c, 
        hptdc_tms_3_c, hptdc_trstn_3_c, 
        \ControlDecoder_0.lathed_data_from_hptdc_024 , \qusb_fd_in[7] , 
        rst_c_i_0, clk_c_i_0, N_3881_i_0, N_3880_i_0, qusb_ren_c, 
        clk_ibuf_net_1;
    
    BIBUF \qusb_fd_iobuf[0]  (.PAD(qusb_fd[0]), .D(\qusb_fd_temp[0] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[0] ));
    DACController DACController_0 (
        .ControlDecoder_0_threshold_voltage_1({
        \ControlDecoder_0_threshold_voltage_1[13] , 
        \ControlDecoder_0_threshold_voltage_1[12] , 
        \ControlDecoder_0_threshold_voltage_1[11] , 
        \ControlDecoder_0_threshold_voltage_1[10] , 
        \ControlDecoder_0_threshold_voltage_1[9] , 
        \ControlDecoder_0_threshold_voltage_1[8] , 
        \ControlDecoder_0_threshold_voltage_1[7] , 
        \ControlDecoder_0_threshold_voltage_1[6] , 
        \ControlDecoder_0_threshold_voltage_1[5] , 
        \ControlDecoder_0_threshold_voltage_1[4] , 
        \ControlDecoder_0_threshold_voltage_1[3] , 
        \ControlDecoder_0_threshold_voltage_1[2] , 
        \ControlDecoder_0_threshold_voltage_1[1] , 
        \ControlDecoder_0_threshold_voltage_1[0] }), .clk_c(clk_c), 
        .dac_din_1_c(dac_din_1_c), .dac_sync_1_c(dac_sync_1_c), 
        .dac_ldac_1_c(dac_ldac_1_c), .dac_sclk_1_c(dac_sclk_1_c));
    BIBUF \qusb_fd_iobuf[15]  (.PAD(qusb_fd[15]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[15] ));
    OUTBUF hptdc_tms_3_obuf (.D(hptdc_tms_3_c), .PAD(hptdc_tms_3));
    OUTBUF hptdc_get_data_2_obuf (.D(hptdc_get_data_2_c), .PAD(
        hptdc_get_data_2));
    INBUF hptdc_token_out_2_ibuf (.PAD(hptdc_token_out_2), .Y(
        hptdc_token_in_2_c));
    TRIBUFF hptdc_bunch_reset_3_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_bunch_reset_3));
    BIBUF \qusb_fd_iobuf[8]  (.PAD(qusb_fd[8]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[8] ));
    CLKINT clk_ibuf_RNIVTI2 (.A(clk_ibuf_net_1), .Y(clk_c));
    INBUF qusb_ren_ibuf (.PAD(qusb_ren), .Y(qusb_ren_c));
    BIBUF \qusb_fd_iobuf[13]  (.PAD(qusb_fd[13]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[13] ));
    OUTBUF hptdc_tms_0_obuf (.D(hptdc_tms_0_c), .PAD(hptdc_tms_0));
    OUTBUF hptdc_token_in_3_obuf (.D(hptdc_token_in_3_c), .PAD(
        hptdc_token_in_3));
    INBUF qusb_wen_ibuf (.PAD(qusb_wen), .Y(qusb_wen_c));
    TRIBUFF hptdc_encode_control_0_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_encode_control_0));
    BIBUF \qusb_fd_iobuf[2]  (.PAD(qusb_fd[2]), .D(\qusb_fd_temp[2] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[2] ));
    JTAG_0 JTAG_2 (.hptdc_tms_2_c(hptdc_tms_2_c), .clk_c_i_0(clk_c_i_0)
        , .rst_c_i_0(rst_c_i_0), .hptdc_tdo_2_c(hptdc_tdo_2_c), .rst_c(
        rst_c));
    OUTBUF hptdc_get_data_0_obuf (.D(hptdc_get_data_0_c), .PAD(
        hptdc_get_data_0));
    OUTBUF dac_sclk_1_obuf (.D(dac_sclk_1_c), .PAD(dac_sclk_1));
    TRIBUFF hptdc_token_bypass_in_3_obuft (.D(GND_net_1), .E(GND_net_1)
        , .PAD(hptdc_token_bypass_in_3));
    VCC VCC (.Y(VCC_net_1));
    BIBUF \qusb_fd_iobuf[4]  (.PAD(qusb_fd[4]), .D(\qusb_fd_temp[4] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[4] ));
    INBUF rst_ibuf (.PAD(rst), .Y(rst_c));
    TRIBUFF hptdc_serial_in_1_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_serial_in_1));
    INBUF hptdc_data_ready_3_ibuf (.PAD(hptdc_data_ready_3), .Y(
        hptdc_get_data_3_c));
    OUTBUF hptdc_trstn_1_obuf (.D(hptdc_trstn_3_c), .PAD(hptdc_trstn_1)
        );
    OUTBUF dac_ldac_1_obuf (.D(dac_ldac_1_c), .PAD(dac_ldac_1));
    OUTBUF dac_din_0_obuf (.D(dac_din_1_c), .PAD(dac_din_0));
    BIBUF \qusb_fd_iobuf[11]  (.PAD(qusb_fd[11]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[11] ));
    BIBUF \qusb_fd_iobuf[1]  (.PAD(qusb_fd[1]), .D(\qusb_fd_temp[1] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[1] ));
    TRIBUFF hptdc_event_reset_3_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_event_reset_3));
    JTAG_3 JTAG_0 (.ControlDecoder_0_data_to_hptdc_0({
        \ControlDecoder_0_data_to_hptdc_0[7] , 
        \ControlDecoder_0_data_to_hptdc_0[6] , 
        \ControlDecoder_0_data_to_hptdc_0[5] , 
        \ControlDecoder_0_data_to_hptdc_0[4] , 
        \ControlDecoder_0_data_to_hptdc_0[3] , 
        \ControlDecoder_0_data_to_hptdc_0[2] , 
        \ControlDecoder_0_data_to_hptdc_0[1] , 
        \ControlDecoder_0_data_to_hptdc_0[0] }), 
        .ControlDecoder_0_jtag_instruction_0({
        \ControlDecoder_0_jtag_instruction_0[1] , 
        \ControlDecoder_0_jtag_instruction_0[0] }), .hptdc_tms_0_c(
        hptdc_tms_0_c), .clk_c_i_0(clk_c_i_0), .rst_c_i_0(rst_c_i_0), 
        .ControlDecoder_0_send_data_to_hptdc_0(
        ControlDecoder_0_send_data_to_hptdc_0), 
        .JTAG_0_data_received_from_hptdc(
        JTAG_0_data_received_from_hptdc), .hptdc_tdo_0_c(hptdc_tdo_0_c)
        , .hptdc_trstn_3_c(hptdc_trstn_3_c), .hptdc_tdi_0_c(
        hptdc_tdi_0_c), .JTAG_0_jtag_bus_in_use(JTAG_0_jtag_bus_in_use)
        , .rst_c(rst_c), .ControlDecoder_0_get_data_from_hptdc_0(
        ControlDecoder_0_get_data_from_hptdc_0), 
        .lathed_data_from_hptdc_024(
        \ControlDecoder_0.lathed_data_from_hptdc_024 ), .N_3881_i_0(
        N_3881_i_0), .N_3880_i_0(N_3880_i_0));
    INBUF hptdc_token_out_3_ibuf (.PAD(hptdc_token_out_3), .Y(
        hptdc_token_in_3_c));
    TRIBUFF hptdc_token_bypass_in_0_obuft (.D(GND_net_1), .E(GND_net_1)
        , .PAD(hptdc_token_bypass_in_0));
    BIBUF \qusb_fd_iobuf[9]  (.PAD(qusb_fd[9]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[9] ));
    BIBUF \qusb_fd_iobuf[3]  (.PAD(qusb_fd[3]), .D(\qusb_fd_temp[3] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[3] ));
    OUTBUF hptdc_get_data_3_obuf (.D(hptdc_get_data_3_c), .PAD(
        hptdc_get_data_3));
    TRIBUFF hptdc_serial_in_3_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_serial_in_3));
    TRIBUFF hptdc_bunch_reset_1_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_bunch_reset_1));
    OUTBUF hptdc_tms_2_obuf (.D(hptdc_tms_2_c), .PAD(hptdc_tms_2));
    TRIBUFF hptdc_event_reset_0_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_event_reset_0));
    OUTBUF hptdc_tck_3_obuf (.D(clk_c), .PAD(hptdc_tck_3));
    TRIBUFF hptdc_serial_bypass_in_3_obuft (.D(GND_net_1), .E(
        GND_net_1), .PAD(hptdc_serial_bypass_in_3));
    OUTBUF hptdc_trstn_2_obuf (.D(hptdc_trstn_3_c), .PAD(hptdc_trstn_2)
        );
    CFG1 #( .INIT(2'h1) )  rst_ibuf_RNIUUM5 (.A(rst_c), .Y(rst_c_i_0));
    GND GND (.Y(GND_net_1));
    TRIBUFF hptdc_event_reset_1_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_event_reset_1));
    OUTBUF hptdc_tdo_3_obuf (.D(hptdc_tdo_3_c), .PAD(hptdc_tdo_3));
    TRIBUFF hptdc_serial_in_2_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_serial_in_2));
    TRIBUFF hptdc_bunch_reset_2_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_bunch_reset_2));
    BIBUF \qusb_fd_iobuf[5]  (.PAD(qusb_fd[5]), .D(\qusb_fd_temp[5] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[5] ));
    OUTBUF hptdc_tms_1_obuf (.D(hptdc_tms_1_c), .PAD(hptdc_tms_1));
    TRIBUFF hptdc_serial_bypass_in_0_obuft (.D(GND_net_1), .E(
        GND_net_1), .PAD(hptdc_serial_bypass_in_0));
    INBUF hptdc_data_ready_0_ibuf (.PAD(hptdc_data_ready_0), .Y(
        hptdc_get_data_0_c));
    OUTBUF hptdc_tck_2_obuf (.D(clk_c), .PAD(hptdc_tck_2));
    TRIBUFF hptdc_encode_control_2_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_encode_control_2));
    TRIBUFF hptdc_serial_in_0_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_serial_in_0));
    TRIBUFF hptdc_event_reset_2_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_event_reset_2));
    OUTBUF hptdc_tck_1_obuf (.D(clk_c), .PAD(hptdc_tck_1));
    OUTBUF dac_sclk_0_obuf (.D(dac_sclk_1_c), .PAD(dac_sclk_0));
    BIBUF \qusb_fd_iobuf[6]  (.PAD(qusb_fd[6]), .D(\qusb_fd_temp[6] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[6] ));
    INBUF hptdc_token_out_1_ibuf (.PAD(hptdc_token_out_1), .Y(
        hptdc_token_in_1_c));
    CFG1 #( .INIT(2'h1) )  clk_ibuf_RNIVTI2_0 (.A(clk_c), .Y(clk_c_i_0)
        );
    BIBUF \qusb_fd_iobuf[14]  (.PAD(qusb_fd[14]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[14] ));
    OUTBUF hptdc_trstn_3_obuf (.D(hptdc_trstn_3_c), .PAD(hptdc_trstn_3)
        );
    OUTBUF hptdc_tdo_1_obuf (.D(hptdc_tdo_1_c), .PAD(hptdc_tdo_1));
    OUTBUF hptdc_tck_0_obuf (.D(clk_c), .PAD(hptdc_tck_0));
    OUTBUF dac_din_1_obuf (.D(dac_din_1_c), .PAD(dac_din_1));
    OUTBUF hptdc_token_in_0_obuf (.D(hptdc_token_in_0_c), .PAD(
        hptdc_token_in_0));
    OUTBUF dac_sync_1_obuf (.D(dac_sync_1_c), .PAD(dac_sync_1));
    OUTBUF dac_ldac_0_obuf (.D(dac_ldac_1_c), .PAD(dac_ldac_0));
    OUTBUF hptdc_tdo_2_obuf (.D(hptdc_tdo_2_c), .PAD(hptdc_tdo_2));
    OUTBUF hptdc_trstn_0_obuf (.D(hptdc_trstn_3_c), .PAD(hptdc_trstn_0)
        );
    INBUF hptdc_token_out_0_ibuf (.PAD(hptdc_token_out_0), .Y(
        hptdc_token_in_0_c));
    TRIBUFF hptdc_serial_bypass_in_1_obuft (.D(GND_net_1), .E(
        GND_net_1), .PAD(hptdc_serial_bypass_in_1));
    TRIBUFF hptdc_trigger_1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        hptdc_trigger_1));
    TRIBUFF hptdc_token_bypass_in_1_obuft (.D(GND_net_1), .E(GND_net_1)
        , .PAD(hptdc_token_bypass_in_1));
    JTAG JTAG_1 (.hptdc_tms_1_c(hptdc_tms_1_c), .clk_c_i_0(clk_c_i_0), 
        .rst_c_i_0(rst_c_i_0), .hptdc_tdo_1_c(hptdc_tdo_1_c), .rst_c(
        rst_c));
    OUTBUF hptdc_get_data_1_obuf (.D(hptdc_get_data_1_c), .PAD(
        hptdc_get_data_1));
    TRIBUFF hptdc_trigger_0_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        hptdc_trigger_0));
    TRIBUFF hptdc_trigger_2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        hptdc_trigger_2));
    JTAG_1 JTAG_3 (.hptdc_tms_3_c(hptdc_tms_3_c), .clk_c_i_0(clk_c_i_0)
        , .rst_c_i_0(rst_c_i_0), .hptdc_tdo_3_c(hptdc_tdo_3_c), .rst_c(
        rst_c));
    BIBUF \qusb_fd_iobuf[7]  (.PAD(qusb_fd[7]), .D(\qusb_fd_temp[7] ), 
        .E(qusb_ren_c), .Y(\qusb_fd_in[7] ));
    TRIBUFF hptdc_trigger_3_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        hptdc_trigger_3));
    TRIBUFF hptdc_encode_control_1_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_encode_control_1));
    OUTBUF hptdc_token_in_1_obuf (.D(hptdc_token_in_1_c), .PAD(
        hptdc_token_in_1));
    TRIBUFF hptdc_serial_bypass_in_2_obuft (.D(GND_net_1), .E(
        GND_net_1), .PAD(hptdc_serial_bypass_in_2));
    OUTBUF hptdc_tdo_0_obuf (.D(hptdc_tdo_0_c), .PAD(hptdc_tdo_0));
    TRIBUFF hptdc_encode_control_3_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_encode_control_3));
    TRIBUFF qusb_ifclk_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        qusb_ifclk));
    BIBUF \qusb_fd_iobuf[12]  (.PAD(qusb_fd[12]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[12] ));
    INBUF hptdc_data_ready_1_ibuf (.PAD(hptdc_data_ready_1), .Y(
        hptdc_get_data_1_c));
    ControlDecoder ControlDecoder_0 (
        .ControlDecoder_0_threshold_voltage_1({
        \ControlDecoder_0_threshold_voltage_1[13] , 
        \ControlDecoder_0_threshold_voltage_1[12] , 
        \ControlDecoder_0_threshold_voltage_1[11] , 
        \ControlDecoder_0_threshold_voltage_1[10] , 
        \ControlDecoder_0_threshold_voltage_1[9] , 
        \ControlDecoder_0_threshold_voltage_1[8] , 
        \ControlDecoder_0_threshold_voltage_1[7] , 
        \ControlDecoder_0_threshold_voltage_1[6] , 
        \ControlDecoder_0_threshold_voltage_1[5] , 
        \ControlDecoder_0_threshold_voltage_1[4] , 
        \ControlDecoder_0_threshold_voltage_1[3] , 
        \ControlDecoder_0_threshold_voltage_1[2] , 
        \ControlDecoder_0_threshold_voltage_1[1] , 
        \ControlDecoder_0_threshold_voltage_1[0] }), .qusb_fd_temp({
        \qusb_fd_temp[7] , \qusb_fd_temp[6] , \qusb_fd_temp[5] , 
        \qusb_fd_temp[4] , \qusb_fd_temp[3] , \qusb_fd_temp[2] , 
        \qusb_fd_temp[1] , \qusb_fd_temp[0] }), 
        .ControlDecoder_0_jtag_instruction_0({
        \ControlDecoder_0_jtag_instruction_0[1] , 
        \ControlDecoder_0_jtag_instruction_0[0] }), 
        .ControlDecoder_0_data_to_hptdc_0({
        \ControlDecoder_0_data_to_hptdc_0[7] , 
        \ControlDecoder_0_data_to_hptdc_0[6] , 
        \ControlDecoder_0_data_to_hptdc_0[5] , 
        \ControlDecoder_0_data_to_hptdc_0[4] , 
        \ControlDecoder_0_data_to_hptdc_0[3] , 
        \ControlDecoder_0_data_to_hptdc_0[2] , 
        \ControlDecoder_0_data_to_hptdc_0[1] , 
        \ControlDecoder_0_data_to_hptdc_0[0] }), .qusb_fd_in({
        \qusb_fd_in[15] , \qusb_fd_in[14] , \qusb_fd_in[13] , 
        \qusb_fd_in[12] , \qusb_fd_in[11] , \qusb_fd_in[10] , 
        \qusb_fd_in[9] , \qusb_fd_in[8] , \qusb_fd_in[7] , 
        \qusb_fd_in[6] , \qusb_fd_in[5] , \qusb_fd_in[4] , 
        \qusb_fd_in[3] , \qusb_fd_in[2] , \qusb_fd_in[1] , 
        \qusb_fd_in[0] }), .clk_c(clk_c), .N_3880_i_0(N_3880_i_0), 
        .N_3881_i_0(N_3881_i_0), 
        .ControlDecoder_0_get_data_from_hptdc_0(
        ControlDecoder_0_get_data_from_hptdc_0), 
        .ControlDecoder_0_send_data_to_hptdc_0(
        ControlDecoder_0_send_data_to_hptdc_0), 
        .JTAG_0_data_received_from_hptdc(
        JTAG_0_data_received_from_hptdc), .qusb_wen_c(qusb_wen_c), 
        .rst_c(rst_c), .lathed_data_from_hptdc_024(
        \ControlDecoder_0.lathed_data_from_hptdc_024 ), 
        .JTAG_0_jtag_bus_in_use(JTAG_0_jtag_bus_in_use));
    TRIBUFF hptdc_token_bypass_in_2_obuft (.D(GND_net_1), .E(GND_net_1)
        , .PAD(hptdc_token_bypass_in_2));
    TRIBUFF hptdc_bunch_reset_0_obuft (.D(GND_net_1), .E(GND_net_1), 
        .PAD(hptdc_bunch_reset_0));
    INBUF clk_ibuf (.PAD(clk), .Y(clk_ibuf_net_1));
    OUTBUF hptdc_token_in_2_obuf (.D(hptdc_token_in_2_c), .PAD(
        hptdc_token_in_2));
    OUTBUF dac_sync_0_obuf (.D(dac_sync_1_c), .PAD(dac_sync_0));
    BIBUF \qusb_fd_iobuf[10]  (.PAD(qusb_fd[10]), .D(GND_net_1), .E(
        qusb_ren_c), .Y(\qusb_fd_in[10] ));
    INBUF hptdc_tdi_0_ibuf (.PAD(hptdc_tdi_0), .Y(hptdc_tdi_0_c));
    INBUF hptdc_data_ready_2_ibuf (.PAD(hptdc_data_ready_2), .Y(
        hptdc_get_data_2_c));
    
endmodule
