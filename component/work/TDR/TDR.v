//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Apr 07 16:17:22 2016
// Version: v11.7 11.7.0.119
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// TDR
module TDR(
    // Inputs
    ccu25_strobe_out_0,
    ccu25_strobe_out_1,
    clk,
    clk_40,
    hptdc_data_0,
    hptdc_data_1,
    hptdc_data_2,
    hptdc_data_3,
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
    qusb_gpifadr,
    qusb_ren,
    qusb_wen,
    rst,
    t1,
    // Outputs
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
    qusb_ifclk,
    // Inouts
    ccu25_data_0,
    qusb_fd
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ccu25_strobe_out_0;
input         ccu25_strobe_out_1;
input         clk;
input         clk_40;
input  [31:0] hptdc_data_0;
input  [31:0] hptdc_data_1;
input  [31:0] hptdc_data_2;
input  [31:0] hptdc_data_3;
input         hptdc_data_ready_0;
input         hptdc_data_ready_1;
input         hptdc_data_ready_2;
input         hptdc_data_ready_3;
input         hptdc_error_0;
input         hptdc_error_1;
input         hptdc_error_2;
input         hptdc_error_3;
input         hptdc_serial_out_0;
input         hptdc_serial_out_1;
input         hptdc_serial_out_2;
input         hptdc_serial_out_3;
input         hptdc_tdi_0;
input         hptdc_tdi_1;
input         hptdc_tdi_2;
input         hptdc_tdi_3;
input         hptdc_token_out_0;
input         hptdc_token_out_1;
input         hptdc_token_out_2;
input         hptdc_token_out_3;
input  [8:0]  qusb_gpifadr;
input         qusb_ren;
input         qusb_wen;
input         rst;
input         t1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        dac_din_0;
output        dac_din_1;
output        dac_ldac_0;
output        dac_ldac_1;
output        dac_sclk_0;
output        dac_sclk_1;
output        dac_sync_0;
output        dac_sync_1;
output        hptdc_bunch_reset_0;
output        hptdc_bunch_reset_1;
output        hptdc_bunch_reset_2;
output        hptdc_bunch_reset_3;
output        hptdc_encode_control_0;
output        hptdc_encode_control_1;
output        hptdc_encode_control_2;
output        hptdc_encode_control_3;
output        hptdc_event_reset_0;
output        hptdc_event_reset_1;
output        hptdc_event_reset_2;
output        hptdc_event_reset_3;
output        hptdc_get_data_0;
output        hptdc_get_data_1;
output        hptdc_get_data_2;
output        hptdc_get_data_3;
output        hptdc_serial_bypass_in_0;
output        hptdc_serial_bypass_in_1;
output        hptdc_serial_bypass_in_2;
output        hptdc_serial_bypass_in_3;
output        hptdc_serial_in_0;
output        hptdc_serial_in_1;
output        hptdc_serial_in_2;
output        hptdc_serial_in_3;
output        hptdc_tck_0;
output        hptdc_tck_1;
output        hptdc_tck_2;
output        hptdc_tck_3;
output        hptdc_tdo_0;
output        hptdc_tdo_1;
output        hptdc_tdo_2;
output        hptdc_tdo_3;
output        hptdc_tms_0;
output        hptdc_tms_1;
output        hptdc_tms_2;
output        hptdc_tms_3;
output        hptdc_token_bypass_in_0;
output        hptdc_token_bypass_in_1;
output        hptdc_token_bypass_in_2;
output        hptdc_token_bypass_in_3;
output        hptdc_token_in_0;
output        hptdc_token_in_1;
output        hptdc_token_in_2;
output        hptdc_token_in_3;
output        hptdc_trigger_0;
output        hptdc_trigger_1;
output        hptdc_trigger_2;
output        hptdc_trigger_3;
output        hptdc_trstn_0;
output        hptdc_trstn_1;
output        hptdc_trstn_2;
output        hptdc_trstn_3;
output        qusb_ifclk;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [7:0]  ccu25_data_0;
inout  [15:0] qusb_fd;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [14:0]  Adder_0_address_out;
wire   [63:0]  Adder_0_data_out;
wire           Adder_0_data_ready_for_transmit;
wire           Adder_0_read_enable;
wire           Adder_0_transmit_complete;
wire   [14:0]  Adder_1_address_out;
wire   [63:0]  Adder_1_data_out;
wire           Adder_1_data_ready_for_transmit;
wire           Adder_1_read_enable;
wire           Adder_1_transmit_complete;
wire   [14:0]  Adder_2_address_out;
wire   [63:0]  Adder_2_data_out;
wire           Adder_2_data_ready_for_transmit;
wire           Adder_2_read_enable;
wire           Adder_2_transmit_complete;
wire   [14:0]  Adder_3_address_out;
wire   [63:0]  Adder_3_data_out;
wire           Adder_3_data_ready_for_transmit;
wire           Adder_3_read_enable;
wire           Adder_3_transmit_complete;
wire   [15:0]  BunchCounter_0_bunch_number_1;
wire   [23:0]  BunchCounter_0_event_number_0;
wire   [7:0]   ccu25_data_0;
wire           ccu25_strobe_out_0;
wire           ccu25_strobe_out_1;
wire           clk;
wire           clk_40;
wire   [31:0]  ControlDecoder_0_acquisition_counter_0;
wire   [31:0]  ControlDecoder_0_acquisition_counter_1;
wire   [31:0]  ControlDecoder_0_acquisition_counter_2;
wire   [31:0]  ControlDecoder_0_acquisition_counter_3;
wire   [13:0]  ControlDecoder_0_bias_voltage_1;
wire   [748:0] ControlDecoder_0_data_to_hptdc_0;
wire   [748:0] ControlDecoder_0_data_to_hptdc_1;
wire   [748:0] ControlDecoder_0_data_to_hptdc_2;
wire   [748:0] ControlDecoder_0_data_to_hptdc_3;
wire           ControlDecoder_0_data_transmit_complete_0;
wire           ControlDecoder_0_data_transmit_complete_1;
wire           ControlDecoder_0_data_transmit_complete_2;
wire           ControlDecoder_0_data_transmit_complete_3;
wire           ControlDecoder_0_get_data_from_hptdc_0;
wire           ControlDecoder_0_get_data_from_hptdc_1;
wire           ControlDecoder_0_get_data_from_hptdc_2;
wire           ControlDecoder_0_get_data_from_hptdc_3;
wire   [4:0]   ControlDecoder_0_jtag_instruction_0;
wire   [4:0]   ControlDecoder_0_jtag_instruction_1;
wire   [4:0]   ControlDecoder_0_jtag_instruction_2;
wire   [4:0]   ControlDecoder_0_jtag_instruction_3;
wire   [23:0]  ControlDecoder_0_run_number_0;
wire           ControlDecoder_0_send_data_to_hptdc_0;
wire           ControlDecoder_0_send_data_to_hptdc_1;
wire           ControlDecoder_0_send_data_to_hptdc_2;
wire           ControlDecoder_0_send_data_to_hptdc_3;
wire   [13:0]  ControlDecoder_0_threshold_voltage_1;
wire           ControlDecoder_0_transmit_request_0;
wire           ControlDecoder_0_transmit_request_1;
wire           ControlDecoder_0_transmit_request_2;
wire           ControlDecoder_0_transmit_request_3;
wire           dac_din_0_net_0;
wire           dac_din_1_net_0;
wire           dac_ldac_0_net_0;
wire           dac_ldac_1_net_0;
wire           dac_sclk_0_net_0;
wire           dac_sclk_1_net_0;
wire           dac_sync_0_net_0;
wire           dac_sync_1_net_0;
wire   [31:0]  FIFO_0_data_out_1;
wire           FIFO_0_empty;
wire           FIFO_0_output_ready;
wire   [31:0]  FIFO_1_data_out_1;
wire           FIFO_1_empty;
wire           FIFO_1_output_ready;
wire   [31:0]  FIFO_2_data_out_1;
wire           FIFO_2_empty;
wire           FIFO_2_output_ready;
wire   [31:0]  FIFO_3_data_out_1;
wire           FIFO_3_empty;
wire           FIFO_3_output_ready;
wire           hptdc_bunch_reset_0_net_0;
wire           hptdc_bunch_reset_1_net_0;
wire           hptdc_bunch_reset_2_net_0;
wire           hptdc_bunch_reset_3_net_0;
wire   [31:0]  hptdc_data_0;
wire   [31:0]  hptdc_data_1;
wire   [31:0]  hptdc_data_2;
wire   [31:0]  hptdc_data_3;
wire           hptdc_data_ready_0;
wire           hptdc_data_ready_1;
wire           hptdc_data_ready_2;
wire           hptdc_data_ready_3;
wire           hptdc_encode_control_0_net_0;
wire           hptdc_encode_control_1_net_0;
wire           hptdc_encode_control_2_net_0;
wire           hptdc_encode_control_3_net_0;
wire           hptdc_error_0;
wire           hptdc_error_1;
wire           hptdc_error_2;
wire           hptdc_error_3;
wire           hptdc_event_reset_0_net_0;
wire           hptdc_event_reset_1_net_0;
wire           hptdc_event_reset_2_net_0;
wire           hptdc_event_reset_3_net_0;
wire           hptdc_get_data_0_net_0;
wire           hptdc_get_data_1_net_0;
wire           hptdc_get_data_2_net_0;
wire           hptdc_get_data_3_net_0;
wire           hptdc_serial_bypass_in_0_net_0;
wire           hptdc_serial_bypass_in_1_net_0;
wire           hptdc_serial_bypass_in_2_net_0;
wire           hptdc_serial_bypass_in_3_net_0;
wire           hptdc_serial_in_0_net_0;
wire           hptdc_serial_in_1_net_0;
wire           hptdc_serial_in_2_net_0;
wire           hptdc_serial_in_3_net_0;
wire           hptdc_serial_out_0;
wire           hptdc_serial_out_1;
wire           hptdc_serial_out_2;
wire           hptdc_serial_out_3;
wire           hptdc_tck_0_net_0;
wire           hptdc_tck_1_net_0;
wire           hptdc_tck_2_net_0;
wire           hptdc_tck_3_net_0;
wire           hptdc_tdi_0;
wire           hptdc_tdi_1;
wire           hptdc_tdi_2;
wire           hptdc_tdi_3;
wire           hptdc_tdo_0_net_0;
wire           hptdc_tdo_1_net_0;
wire           hptdc_tdo_2_net_0;
wire           hptdc_tdo_3_net_0;
wire           hptdc_tms_0_net_0;
wire           hptdc_tms_1_net_0;
wire           hptdc_tms_2_net_0;
wire           hptdc_tms_3_net_0;
wire           hptdc_token_bypass_in_0_net_0;
wire           hptdc_token_bypass_in_1_net_0;
wire           hptdc_token_bypass_in_2_net_0;
wire           hptdc_token_bypass_in_3_net_0;
wire           hptdc_token_in_0_net_0;
wire           hptdc_token_in_1_net_0;
wire           hptdc_token_in_2_net_0;
wire           hptdc_token_in_3_net_0;
wire           hptdc_token_out_0;
wire           hptdc_token_out_1;
wire           hptdc_token_out_2;
wire           hptdc_token_out_3;
wire           hptdc_trigger_0_net_0;
wire           hptdc_trigger_1_net_0;
wire           hptdc_trigger_2_net_0;
wire           hptdc_trigger_3_net_0;
wire           hptdc_trstn_0_net_0;
wire           hptdc_trstn_1_net_0;
wire           hptdc_trstn_2_net_0;
wire           hptdc_trstn_3_net_0;
wire   [748:0] JTAG_0_data_from_hptdc;
wire           JTAG_0_data_received_from_hptdc;
wire           JTAG_0_data_sent_to_hptdc;
wire           JTAG_0_jtag_bus_in_use;
wire   [748:0] JTAG_1_data_from_hptdc;
wire           JTAG_1_data_received_from_hptdc;
wire           JTAG_1_data_sent_to_hptdc;
wire           JTAG_1_jtag_bus_in_use;
wire   [748:0] JTAG_2_data_from_hptdc;
wire           JTAG_2_data_received_from_hptdc;
wire           JTAG_2_data_sent_to_hptdc;
wire           JTAG_2_jtag_bus_in_use;
wire   [748:0] JTAG_3_data_from_hptdc;
wire           JTAG_3_data_received_from_hptdc;
wire           JTAG_3_data_sent_to_hptdc;
wire           JTAG_3_jtag_bus_in_use;
wire   [15:0]  qusb_fd;
wire   [8:0]   qusb_gpifadr;
wire           qusb_ifclk_net_0;
wire           qusb_ren;
wire           qusb_wen;
wire           rst;
wire           t1;
wire           dac_sync_0_net_1;
wire           dac_din_0_net_1;
wire           dac_ldac_0_net_1;
wire           hptdc_tck_0_net_1;
wire           hptdc_tms_0_net_1;
wire           hptdc_trstn_0_net_1;
wire           hptdc_tdo_0_net_1;
wire           hptdc_tms_1_net_1;
wire           hptdc_tck_1_net_1;
wire           hptdc_trstn_1_net_1;
wire           hptdc_tdo_1_net_1;
wire           hptdc_tdo_2_net_1;
wire           hptdc_trstn_2_net_1;
wire           hptdc_tck_2_net_1;
wire           hptdc_tms_2_net_1;
wire           hptdc_tdo_3_net_1;
wire           hptdc_tms_3_net_1;
wire           hptdc_tck_3_net_1;
wire           hptdc_trstn_3_net_1;
wire           dac_sync_1_net_1;
wire           dac_sclk_1_net_1;
wire           dac_ldac_1_net_1;
wire           dac_din_1_net_1;
wire           dac_sclk_0_net_1;
wire           hptdc_serial_in_0_net_1;
wire           hptdc_encode_control_0_net_1;
wire           hptdc_serial_bypass_in_0_net_1;
wire           hptdc_event_reset_0_net_1;
wire           hptdc_trigger_0_net_1;
wire           hptdc_bunch_reset_0_net_1;
wire           hptdc_token_bypass_in_0_net_1;
wire           hptdc_get_data_0_net_1;
wire           hptdc_token_in_0_net_1;
wire           hptdc_token_in_1_net_1;
wire           hptdc_trigger_1_net_1;
wire           hptdc_serial_in_1_net_1;
wire           hptdc_event_reset_1_net_1;
wire           hptdc_encode_control_1_net_1;
wire           hptdc_serial_bypass_in_1_net_1;
wire           hptdc_bunch_reset_1_net_1;
wire           hptdc_token_bypass_in_1_net_1;
wire           hptdc_get_data_1_net_1;
wire           hptdc_token_in_2_net_1;
wire           hptdc_trigger_2_net_1;
wire           hptdc_serial_in_2_net_1;
wire           hptdc_encode_control_2_net_1;
wire           hptdc_bunch_reset_2_net_1;
wire           hptdc_get_data_2_net_1;
wire           hptdc_serial_bypass_in_2_net_1;
wire           hptdc_event_reset_2_net_1;
wire           hptdc_token_bypass_in_2_net_1;
wire           hptdc_encode_control_3_net_1;
wire           hptdc_token_in_3_net_1;
wire           hptdc_serial_bypass_in_3_net_1;
wire           hptdc_serial_in_3_net_1;
wire           hptdc_bunch_reset_3_net_1;
wire           hptdc_event_reset_3_net_1;
wire           hptdc_token_bypass_in_3_net_1;
wire           hptdc_trigger_3_net_1;
wire           hptdc_get_data_3_net_1;
wire           qusb_ifclk_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign dac_sync_0_net_1               = dac_sync_0_net_0;
assign dac_sync_0                     = dac_sync_0_net_1;
assign dac_din_0_net_1                = dac_din_0_net_0;
assign dac_din_0                      = dac_din_0_net_1;
assign dac_ldac_0_net_1               = dac_ldac_0_net_0;
assign dac_ldac_0                     = dac_ldac_0_net_1;
assign hptdc_tck_0_net_1              = hptdc_tck_0_net_0;
assign hptdc_tck_0                    = hptdc_tck_0_net_1;
assign hptdc_tms_0_net_1              = hptdc_tms_0_net_0;
assign hptdc_tms_0                    = hptdc_tms_0_net_1;
assign hptdc_trstn_0_net_1            = hptdc_trstn_0_net_0;
assign hptdc_trstn_0                  = hptdc_trstn_0_net_1;
assign hptdc_tdo_0_net_1              = hptdc_tdo_0_net_0;
assign hptdc_tdo_0                    = hptdc_tdo_0_net_1;
assign hptdc_tms_1_net_1              = hptdc_tms_1_net_0;
assign hptdc_tms_1                    = hptdc_tms_1_net_1;
assign hptdc_tck_1_net_1              = hptdc_tck_1_net_0;
assign hptdc_tck_1                    = hptdc_tck_1_net_1;
assign hptdc_trstn_1_net_1            = hptdc_trstn_1_net_0;
assign hptdc_trstn_1                  = hptdc_trstn_1_net_1;
assign hptdc_tdo_1_net_1              = hptdc_tdo_1_net_0;
assign hptdc_tdo_1                    = hptdc_tdo_1_net_1;
assign hptdc_tdo_2_net_1              = hptdc_tdo_2_net_0;
assign hptdc_tdo_2                    = hptdc_tdo_2_net_1;
assign hptdc_trstn_2_net_1            = hptdc_trstn_2_net_0;
assign hptdc_trstn_2                  = hptdc_trstn_2_net_1;
assign hptdc_tck_2_net_1              = hptdc_tck_2_net_0;
assign hptdc_tck_2                    = hptdc_tck_2_net_1;
assign hptdc_tms_2_net_1              = hptdc_tms_2_net_0;
assign hptdc_tms_2                    = hptdc_tms_2_net_1;
assign hptdc_tdo_3_net_1              = hptdc_tdo_3_net_0;
assign hptdc_tdo_3                    = hptdc_tdo_3_net_1;
assign hptdc_tms_3_net_1              = hptdc_tms_3_net_0;
assign hptdc_tms_3                    = hptdc_tms_3_net_1;
assign hptdc_tck_3_net_1              = hptdc_tck_3_net_0;
assign hptdc_tck_3                    = hptdc_tck_3_net_1;
assign hptdc_trstn_3_net_1            = hptdc_trstn_3_net_0;
assign hptdc_trstn_3                  = hptdc_trstn_3_net_1;
assign dac_sync_1_net_1               = dac_sync_1_net_0;
assign dac_sync_1                     = dac_sync_1_net_1;
assign dac_sclk_1_net_1               = dac_sclk_1_net_0;
assign dac_sclk_1                     = dac_sclk_1_net_1;
assign dac_ldac_1_net_1               = dac_ldac_1_net_0;
assign dac_ldac_1                     = dac_ldac_1_net_1;
assign dac_din_1_net_1                = dac_din_1_net_0;
assign dac_din_1                      = dac_din_1_net_1;
assign dac_sclk_0_net_1               = dac_sclk_0_net_0;
assign dac_sclk_0                     = dac_sclk_0_net_1;
assign hptdc_serial_in_0_net_1        = hptdc_serial_in_0_net_0;
assign hptdc_serial_in_0              = hptdc_serial_in_0_net_1;
assign hptdc_encode_control_0_net_1   = hptdc_encode_control_0_net_0;
assign hptdc_encode_control_0         = hptdc_encode_control_0_net_1;
assign hptdc_serial_bypass_in_0_net_1 = hptdc_serial_bypass_in_0_net_0;
assign hptdc_serial_bypass_in_0       = hptdc_serial_bypass_in_0_net_1;
assign hptdc_event_reset_0_net_1      = hptdc_event_reset_0_net_0;
assign hptdc_event_reset_0            = hptdc_event_reset_0_net_1;
assign hptdc_trigger_0_net_1          = hptdc_trigger_0_net_0;
assign hptdc_trigger_0                = hptdc_trigger_0_net_1;
assign hptdc_bunch_reset_0_net_1      = hptdc_bunch_reset_0_net_0;
assign hptdc_bunch_reset_0            = hptdc_bunch_reset_0_net_1;
assign hptdc_token_bypass_in_0_net_1  = hptdc_token_bypass_in_0_net_0;
assign hptdc_token_bypass_in_0        = hptdc_token_bypass_in_0_net_1;
assign hptdc_get_data_0_net_1         = hptdc_get_data_0_net_0;
assign hptdc_get_data_0               = hptdc_get_data_0_net_1;
assign hptdc_token_in_0_net_1         = hptdc_token_in_0_net_0;
assign hptdc_token_in_0               = hptdc_token_in_0_net_1;
assign hptdc_token_in_1_net_1         = hptdc_token_in_1_net_0;
assign hptdc_token_in_1               = hptdc_token_in_1_net_1;
assign hptdc_trigger_1_net_1          = hptdc_trigger_1_net_0;
assign hptdc_trigger_1                = hptdc_trigger_1_net_1;
assign hptdc_serial_in_1_net_1        = hptdc_serial_in_1_net_0;
assign hptdc_serial_in_1              = hptdc_serial_in_1_net_1;
assign hptdc_event_reset_1_net_1      = hptdc_event_reset_1_net_0;
assign hptdc_event_reset_1            = hptdc_event_reset_1_net_1;
assign hptdc_encode_control_1_net_1   = hptdc_encode_control_1_net_0;
assign hptdc_encode_control_1         = hptdc_encode_control_1_net_1;
assign hptdc_serial_bypass_in_1_net_1 = hptdc_serial_bypass_in_1_net_0;
assign hptdc_serial_bypass_in_1       = hptdc_serial_bypass_in_1_net_1;
assign hptdc_bunch_reset_1_net_1      = hptdc_bunch_reset_1_net_0;
assign hptdc_bunch_reset_1            = hptdc_bunch_reset_1_net_1;
assign hptdc_token_bypass_in_1_net_1  = hptdc_token_bypass_in_1_net_0;
assign hptdc_token_bypass_in_1        = hptdc_token_bypass_in_1_net_1;
assign hptdc_get_data_1_net_1         = hptdc_get_data_1_net_0;
assign hptdc_get_data_1               = hptdc_get_data_1_net_1;
assign hptdc_token_in_2_net_1         = hptdc_token_in_2_net_0;
assign hptdc_token_in_2               = hptdc_token_in_2_net_1;
assign hptdc_trigger_2_net_1          = hptdc_trigger_2_net_0;
assign hptdc_trigger_2                = hptdc_trigger_2_net_1;
assign hptdc_serial_in_2_net_1        = hptdc_serial_in_2_net_0;
assign hptdc_serial_in_2              = hptdc_serial_in_2_net_1;
assign hptdc_encode_control_2_net_1   = hptdc_encode_control_2_net_0;
assign hptdc_encode_control_2         = hptdc_encode_control_2_net_1;
assign hptdc_bunch_reset_2_net_1      = hptdc_bunch_reset_2_net_0;
assign hptdc_bunch_reset_2            = hptdc_bunch_reset_2_net_1;
assign hptdc_get_data_2_net_1         = hptdc_get_data_2_net_0;
assign hptdc_get_data_2               = hptdc_get_data_2_net_1;
assign hptdc_serial_bypass_in_2_net_1 = hptdc_serial_bypass_in_2_net_0;
assign hptdc_serial_bypass_in_2       = hptdc_serial_bypass_in_2_net_1;
assign hptdc_event_reset_2_net_1      = hptdc_event_reset_2_net_0;
assign hptdc_event_reset_2            = hptdc_event_reset_2_net_1;
assign hptdc_token_bypass_in_2_net_1  = hptdc_token_bypass_in_2_net_0;
assign hptdc_token_bypass_in_2        = hptdc_token_bypass_in_2_net_1;
assign hptdc_encode_control_3_net_1   = hptdc_encode_control_3_net_0;
assign hptdc_encode_control_3         = hptdc_encode_control_3_net_1;
assign hptdc_token_in_3_net_1         = hptdc_token_in_3_net_0;
assign hptdc_token_in_3               = hptdc_token_in_3_net_1;
assign hptdc_serial_bypass_in_3_net_1 = hptdc_serial_bypass_in_3_net_0;
assign hptdc_serial_bypass_in_3       = hptdc_serial_bypass_in_3_net_1;
assign hptdc_serial_in_3_net_1        = hptdc_serial_in_3_net_0;
assign hptdc_serial_in_3              = hptdc_serial_in_3_net_1;
assign hptdc_bunch_reset_3_net_1      = hptdc_bunch_reset_3_net_0;
assign hptdc_bunch_reset_3            = hptdc_bunch_reset_3_net_1;
assign hptdc_event_reset_3_net_1      = hptdc_event_reset_3_net_0;
assign hptdc_event_reset_3            = hptdc_event_reset_3_net_1;
assign hptdc_token_bypass_in_3_net_1  = hptdc_token_bypass_in_3_net_0;
assign hptdc_token_bypass_in_3        = hptdc_token_bypass_in_3_net_1;
assign hptdc_trigger_3_net_1          = hptdc_trigger_3_net_0;
assign hptdc_trigger_3                = hptdc_trigger_3_net_1;
assign hptdc_get_data_3_net_1         = hptdc_get_data_3_net_0;
assign hptdc_get_data_3               = hptdc_get_data_3_net_1;
assign qusb_ifclk_net_1               = qusb_ifclk_net_0;
assign qusb_ifclk                     = qusb_ifclk_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Adder
Adder Adder_0(
        // Inputs
        .clk                      ( clk ),
        .rst                      ( rst ),
        .event_number             ( BunchCounter_0_event_number_0 ),
        .bunch_number             ( BunchCounter_0_bunch_number_1 ),
        .run_number               ( ControlDecoder_0_run_number_0 ),
        .data_in                  ( FIFO_0_data_out_1 ),
        .empty                    ( FIFO_0_empty ),
        .input_ready              ( FIFO_0_output_ready ),
        .transmit_request         ( ControlDecoder_0_transmit_request_0 ),
        .serial_transmit_complete ( ControlDecoder_0_data_transmit_complete_0 ),
        .acquisition_counter      ( ControlDecoder_0_acquisition_counter_0 ),
        .threshold_voltage        ( ControlDecoder_0_threshold_voltage_1 ),
        .bias_voltage             ( ControlDecoder_0_bias_voltage_1 ),
        // Outputs
        .address_out              ( Adder_0_address_out ),
        .read_enable              ( Adder_0_read_enable ),
        .data_out                 ( Adder_0_data_out ),
        .transmit_complete        ( Adder_0_transmit_complete ),
        .data_ready_for_transmit  ( Adder_0_data_ready_for_transmit ) 
        );

//--------Adder
Adder Adder_1(
        // Inputs
        .clk                      ( clk ),
        .rst                      ( rst ),
        .event_number             ( BunchCounter_0_event_number_0 ),
        .bunch_number             ( BunchCounter_0_bunch_number_1 ),
        .run_number               ( ControlDecoder_0_run_number_0 ),
        .data_in                  ( FIFO_1_data_out_1 ),
        .empty                    ( FIFO_1_empty ),
        .input_ready              ( FIFO_1_output_ready ),
        .transmit_request         ( ControlDecoder_0_transmit_request_1 ),
        .serial_transmit_complete ( ControlDecoder_0_data_transmit_complete_1 ),
        .acquisition_counter      ( ControlDecoder_0_acquisition_counter_1 ),
        .threshold_voltage        ( ControlDecoder_0_threshold_voltage_1 ),
        .bias_voltage             ( ControlDecoder_0_bias_voltage_1 ),
        // Outputs
        .address_out              ( Adder_1_address_out ),
        .read_enable              ( Adder_1_read_enable ),
        .data_out                 ( Adder_1_data_out ),
        .transmit_complete        ( Adder_1_transmit_complete ),
        .data_ready_for_transmit  ( Adder_1_data_ready_for_transmit ) 
        );

//--------Adder
Adder Adder_2(
        // Inputs
        .clk                      ( clk ),
        .rst                      ( rst ),
        .event_number             ( BunchCounter_0_event_number_0 ),
        .bunch_number             ( BunchCounter_0_bunch_number_1 ),
        .run_number               ( ControlDecoder_0_run_number_0 ),
        .data_in                  ( FIFO_2_data_out_1 ),
        .empty                    ( FIFO_2_empty ),
        .input_ready              ( FIFO_2_output_ready ),
        .transmit_request         ( ControlDecoder_0_transmit_request_2 ),
        .serial_transmit_complete ( ControlDecoder_0_data_transmit_complete_2 ),
        .acquisition_counter      ( ControlDecoder_0_acquisition_counter_2 ),
        .threshold_voltage        ( ControlDecoder_0_threshold_voltage_1 ),
        .bias_voltage             ( ControlDecoder_0_bias_voltage_1 ),
        // Outputs
        .address_out              ( Adder_2_address_out ),
        .read_enable              ( Adder_2_read_enable ),
        .data_out                 ( Adder_2_data_out ),
        .transmit_complete        ( Adder_2_transmit_complete ),
        .data_ready_for_transmit  ( Adder_2_data_ready_for_transmit ) 
        );

//--------Adder
Adder Adder_3(
        // Inputs
        .clk                      ( clk ),
        .rst                      ( rst ),
        .event_number             ( BunchCounter_0_event_number_0 ),
        .bunch_number             ( BunchCounter_0_bunch_number_1 ),
        .run_number               ( ControlDecoder_0_run_number_0 ),
        .data_in                  ( FIFO_3_data_out_1 ),
        .empty                    ( FIFO_3_empty ),
        .input_ready              ( FIFO_3_output_ready ),
        .transmit_request         ( ControlDecoder_0_transmit_request_3 ),
        .serial_transmit_complete ( ControlDecoder_0_data_transmit_complete_3 ),
        .acquisition_counter      ( ControlDecoder_0_acquisition_counter_3 ),
        .threshold_voltage        ( ControlDecoder_0_threshold_voltage_1 ),
        .bias_voltage             ( ControlDecoder_0_bias_voltage_1 ),
        // Outputs
        .address_out              ( Adder_3_address_out ),
        .read_enable              ( Adder_3_read_enable ),
        .data_out                 ( Adder_3_data_out ),
        .transmit_complete        ( Adder_3_transmit_complete ),
        .data_ready_for_transmit  ( Adder_3_data_ready_for_transmit ) 
        );

//--------BunchCounter
BunchCounter BunchCounter_0(
        // Inputs
        .clk          ( clk ),
        .rst          ( rst ),
        .clk_40       ( clk_40 ),
        .t1           ( t1 ),
        // Outputs
        .bunch_number ( BunchCounter_0_bunch_number_1 ),
        .event_number ( BunchCounter_0_event_number_0 ) 
        );

//--------ControlDecoder
ControlDecoder ControlDecoder_0(
        // Inputs
        .clk                        ( clk ),
        .rst                        ( rst ),
        .qusb_ren                   ( qusb_ren ),
        .qusb_wen                   ( qusb_wen ),
        .qusb_gpifadr               ( qusb_gpifadr ),
        .transmit_complete_0        ( Adder_0_transmit_complete ),
        .transmit_complete_1        ( Adder_1_transmit_complete ),
        .transmit_complete_2        ( Adder_2_transmit_complete ),
        .transmit_complete_3        ( Adder_3_transmit_complete ),
        .data_from_hptdc_0          ( JTAG_0_data_from_hptdc ),
        .data_from_hptdc_1          ( JTAG_1_data_from_hptdc ),
        .data_from_hptdc_2          ( JTAG_2_data_from_hptdc ),
        .data_from_hptdc_3          ( JTAG_3_data_from_hptdc ),
        .data_received_from_hptdc_0 ( JTAG_0_data_received_from_hptdc ),
        .data_sent_to_hptdc_0       ( JTAG_0_data_sent_to_hptdc ),
        .jtag_bus_in_use_0          ( JTAG_0_jtag_bus_in_use ),
        .data_received_from_hptdc_1 ( JTAG_1_data_received_from_hptdc ),
        .data_sent_to_hptdc_1       ( JTAG_1_data_sent_to_hptdc ),
        .jtag_bus_in_use_1          ( JTAG_1_jtag_bus_in_use ),
        .data_received_from_hptdc_2 ( JTAG_2_data_received_from_hptdc ),
        .data_sent_to_hptdc_2       ( JTAG_2_data_sent_to_hptdc ),
        .jtag_bus_in_use_2          ( JTAG_2_jtag_bus_in_use ),
        .data_received_from_hptdc_3 ( JTAG_3_data_received_from_hptdc ),
        .data_sent_to_hptdc_3       ( JTAG_3_data_sent_to_hptdc ),
        .jtag_bus_in_use_3          ( JTAG_3_jtag_bus_in_use ),
        .data_ready_0               ( Adder_0_data_ready_for_transmit ),
        .data_ready_1               ( Adder_1_data_ready_for_transmit ),
        .data_ready_2               ( Adder_2_data_ready_for_transmit ),
        .data_ready_3               ( Adder_3_data_ready_for_transmit ),
        .data_in_0                  ( Adder_0_data_out ),
        .data_in_1                  ( Adder_1_data_out ),
        .data_in_2                  ( Adder_2_data_out ),
        .data_in_3                  ( Adder_3_data_out ),
        // Outputs
        .qusb_ifclk                 ( qusb_ifclk_net_0 ),
        .run_number                 ( ControlDecoder_0_run_number_0 ),
        .threshold_voltage          ( ControlDecoder_0_threshold_voltage_1 ),
        .bias_voltage               ( ControlDecoder_0_bias_voltage_1 ),
        .transmit_request_0         ( ControlDecoder_0_transmit_request_0 ),
        .acquisition_counter_0      ( ControlDecoder_0_acquisition_counter_0 ),
        .transmit_request_1         ( ControlDecoder_0_transmit_request_1 ),
        .acquisition_counter_1      ( ControlDecoder_0_acquisition_counter_1 ),
        .transmit_request_2         ( ControlDecoder_0_transmit_request_2 ),
        .acquisition_counter_2      ( ControlDecoder_0_acquisition_counter_2 ),
        .transmit_request_3         ( ControlDecoder_0_transmit_request_3 ),
        .acquisition_counter_3      ( ControlDecoder_0_acquisition_counter_3 ),
        .data_to_hptdc_0            ( ControlDecoder_0_data_to_hptdc_0 ),
        .send_data_to_hptdc_0       ( ControlDecoder_0_send_data_to_hptdc_0 ),
        .get_data_from_hptdc_0      ( ControlDecoder_0_get_data_from_hptdc_0 ),
        .data_to_hptdc_1            ( ControlDecoder_0_data_to_hptdc_1 ),
        .send_data_to_hptdc_1       ( ControlDecoder_0_send_data_to_hptdc_1 ),
        .get_data_from_hptdc_1      ( ControlDecoder_0_get_data_from_hptdc_1 ),
        .data_to_hptdc_2            ( ControlDecoder_0_data_to_hptdc_2 ),
        .send_data_to_hptdc_2       ( ControlDecoder_0_send_data_to_hptdc_2 ),
        .get_data_from_hptdc_2      ( ControlDecoder_0_get_data_from_hptdc_2 ),
        .data_to_hptdc_3            ( ControlDecoder_0_data_to_hptdc_3 ),
        .send_data_to_hptdc_3       ( ControlDecoder_0_send_data_to_hptdc_3 ),
        .get_data_from_hptdc_3      ( ControlDecoder_0_get_data_from_hptdc_3 ),
        .jtag_instruction_0         ( ControlDecoder_0_jtag_instruction_0 ),
        .jtag_instruction_1         ( ControlDecoder_0_jtag_instruction_1 ),
        .jtag_instruction_2         ( ControlDecoder_0_jtag_instruction_2 ),
        .jtag_instruction_3         ( ControlDecoder_0_jtag_instruction_3 ),
        .data_transmit_complete_0   ( ControlDecoder_0_data_transmit_complete_0 ),
        .data_transmit_complete_1   ( ControlDecoder_0_data_transmit_complete_1 ),
        .data_transmit_complete_2   ( ControlDecoder_0_data_transmit_complete_2 ),
        .data_transmit_complete_3   ( ControlDecoder_0_data_transmit_complete_3 ),
        // Inouts
        .qusb_fd                    ( qusb_fd ) 
        );

//--------DACController
DACController DACController_0(
        // Inputs
        .clk               ( clk ),
        .threshold_voltage ( ControlDecoder_0_threshold_voltage_1 ),
        // Outputs
        .SYNC_bar          ( dac_sync_0_net_0 ),
        .LDAC_bar          ( dac_ldac_0_net_0 ),
        .DIN               ( dac_din_0_net_0 ),
        .SClock            ( dac_sclk_0_net_0 ) 
        );

//--------DACController
DACController DACController_1(
        // Inputs
        .clk               ( clk ),
        .threshold_voltage ( ControlDecoder_0_threshold_voltage_1 ),
        // Outputs
        .SYNC_bar          ( dac_sync_1_net_0 ),
        .LDAC_bar          ( dac_ldac_1_net_0 ),
        .DIN               ( dac_din_1_net_0 ),
        .SClock            ( dac_sclk_1_net_0 ) 
        );

//--------FIFO
FIFO FIFO_0(
        // Inputs
        .clk                    ( clk ),
        .rst                    ( rst ),
        .read_enable            ( Adder_0_read_enable ),
        .address_in             ( Adder_0_address_out ),
        .hptdc_token_out        ( hptdc_token_out_0 ),
        .hptdc_data             ( hptdc_data_0 ),
        .hptdc_data_ready       ( hptdc_data_ready_0 ),
        .hptdc_serial_out       ( hptdc_serial_out_0 ),
        .hptdc_error            ( hptdc_error_0 ),
        // Outputs
        .data_out               ( FIFO_0_data_out_1 ),
        .output_ready           ( FIFO_0_output_ready ),
        .empty                  ( FIFO_0_empty ),
        .hptdc_token_in         ( hptdc_token_in_0_net_0 ),
        .hptdc_token_bypass_in  ( hptdc_token_bypass_in_0_net_0 ),
        .hptdc_get_data         ( hptdc_get_data_0_net_0 ),
        .hptdc_serial_in        ( hptdc_serial_in_0_net_0 ),
        .hptdc_serial_bypass_in ( hptdc_serial_bypass_in_0_net_0 ),
        .hptdc_trigger          ( hptdc_trigger_0_net_0 ),
        .hptdc_event_reset      ( hptdc_event_reset_0_net_0 ),
        .hptdc_bunch_reset      ( hptdc_bunch_reset_0_net_0 ),
        .hptdc_encode_control   ( hptdc_encode_control_0_net_0 ) 
        );

//--------FIFO
FIFO FIFO_1(
        // Inputs
        .clk                    ( clk ),
        .rst                    ( rst ),
        .read_enable            ( Adder_1_read_enable ),
        .address_in             ( Adder_1_address_out ),
        .hptdc_token_out        ( hptdc_token_out_1 ),
        .hptdc_data             ( hptdc_data_1 ),
        .hptdc_data_ready       ( hptdc_data_ready_1 ),
        .hptdc_serial_out       ( hptdc_serial_out_1 ),
        .hptdc_error            ( hptdc_error_1 ),
        // Outputs
        .data_out               ( FIFO_1_data_out_1 ),
        .output_ready           ( FIFO_1_output_ready ),
        .empty                  ( FIFO_1_empty ),
        .hptdc_token_in         ( hptdc_token_in_1_net_0 ),
        .hptdc_token_bypass_in  ( hptdc_token_bypass_in_1_net_0 ),
        .hptdc_get_data         ( hptdc_get_data_1_net_0 ),
        .hptdc_serial_in        ( hptdc_serial_in_1_net_0 ),
        .hptdc_serial_bypass_in ( hptdc_serial_bypass_in_1_net_0 ),
        .hptdc_trigger          ( hptdc_trigger_1_net_0 ),
        .hptdc_event_reset      ( hptdc_event_reset_1_net_0 ),
        .hptdc_bunch_reset      ( hptdc_bunch_reset_1_net_0 ),
        .hptdc_encode_control   ( hptdc_encode_control_1_net_0 ) 
        );

//--------FIFO
FIFO FIFO_2(
        // Inputs
        .clk                    ( clk ),
        .rst                    ( rst ),
        .read_enable            ( Adder_2_read_enable ),
        .address_in             ( Adder_2_address_out ),
        .hptdc_token_out        ( hptdc_token_out_2 ),
        .hptdc_data             ( hptdc_data_2 ),
        .hptdc_data_ready       ( hptdc_data_ready_2 ),
        .hptdc_serial_out       ( hptdc_serial_out_2 ),
        .hptdc_error            ( hptdc_error_2 ),
        // Outputs
        .data_out               ( FIFO_2_data_out_1 ),
        .output_ready           ( FIFO_2_output_ready ),
        .empty                  ( FIFO_2_empty ),
        .hptdc_token_in         ( hptdc_token_in_2_net_0 ),
        .hptdc_token_bypass_in  ( hptdc_token_bypass_in_2_net_0 ),
        .hptdc_get_data         ( hptdc_get_data_2_net_0 ),
        .hptdc_serial_in        ( hptdc_serial_in_2_net_0 ),
        .hptdc_serial_bypass_in ( hptdc_serial_bypass_in_2_net_0 ),
        .hptdc_trigger          ( hptdc_trigger_2_net_0 ),
        .hptdc_event_reset      ( hptdc_event_reset_2_net_0 ),
        .hptdc_bunch_reset      ( hptdc_bunch_reset_2_net_0 ),
        .hptdc_encode_control   ( hptdc_encode_control_2_net_0 ) 
        );

//--------FIFO
FIFO FIFO_3(
        // Inputs
        .clk                    ( clk ),
        .rst                    ( rst ),
        .read_enable            ( Adder_3_read_enable ),
        .address_in             ( Adder_3_address_out ),
        .hptdc_token_out        ( hptdc_token_out_3 ),
        .hptdc_data             ( hptdc_data_3 ),
        .hptdc_data_ready       ( hptdc_data_ready_3 ),
        .hptdc_serial_out       ( hptdc_serial_out_3 ),
        .hptdc_error            ( hptdc_error_3 ),
        // Outputs
        .data_out               ( FIFO_3_data_out_1 ),
        .output_ready           ( FIFO_3_output_ready ),
        .empty                  ( FIFO_3_empty ),
        .hptdc_token_in         ( hptdc_token_in_3_net_0 ),
        .hptdc_token_bypass_in  ( hptdc_token_bypass_in_3_net_0 ),
        .hptdc_get_data         ( hptdc_get_data_3_net_0 ),
        .hptdc_serial_in        ( hptdc_serial_in_3_net_0 ),
        .hptdc_serial_bypass_in ( hptdc_serial_bypass_in_3_net_0 ),
        .hptdc_trigger          ( hptdc_trigger_3_net_0 ),
        .hptdc_event_reset      ( hptdc_event_reset_3_net_0 ),
        .hptdc_bunch_reset      ( hptdc_bunch_reset_3_net_0 ),
        .hptdc_encode_control   ( hptdc_encode_control_3_net_0 ) 
        );

//--------JTAG
JTAG JTAG_0(
        // Inputs
        .tdi_pad_i                ( hptdc_tdi_0 ),
        .clk                      ( clk ),
        .rst                      ( rst ),
        .send_data_to_hptdc       ( ControlDecoder_0_send_data_to_hptdc_0 ),
        .get_data_from_hptdc      ( ControlDecoder_0_get_data_from_hptdc_0 ),
        .data_to_hptdc            ( ControlDecoder_0_data_to_hptdc_0 ),
        .jtag_instruction         ( ControlDecoder_0_jtag_instruction_0 ),
        // Outputs
        .tms_pad_o                ( hptdc_tms_0_net_0 ),
        .tck_pad_o                ( hptdc_tck_0_net_0 ),
        .trstn_pad_o              ( hptdc_trstn_0_net_0 ),
        .tdo_pad_o                ( hptdc_tdo_0_net_0 ),
        .data_received_from_hptdc ( JTAG_0_data_received_from_hptdc ),
        .data_sent_to_hptdc       ( JTAG_0_data_sent_to_hptdc ),
        .jtag_bus_in_use          ( JTAG_0_jtag_bus_in_use ),
        .data_from_hptdc          ( JTAG_0_data_from_hptdc ) 
        );

//--------JTAG
JTAG JTAG_1(
        // Inputs
        .tdi_pad_i                ( hptdc_tdi_1 ),
        .clk                      ( clk ),
        .rst                      ( rst ),
        .send_data_to_hptdc       ( ControlDecoder_0_send_data_to_hptdc_1 ),
        .get_data_from_hptdc      ( ControlDecoder_0_get_data_from_hptdc_1 ),
        .data_to_hptdc            ( ControlDecoder_0_data_to_hptdc_1 ),
        .jtag_instruction         ( ControlDecoder_0_jtag_instruction_1 ),
        // Outputs
        .tms_pad_o                ( hptdc_tms_1_net_0 ),
        .tck_pad_o                ( hptdc_tck_1_net_0 ),
        .trstn_pad_o              ( hptdc_trstn_1_net_0 ),
        .tdo_pad_o                ( hptdc_tdo_1_net_0 ),
        .data_received_from_hptdc ( JTAG_1_data_received_from_hptdc ),
        .data_sent_to_hptdc       ( JTAG_1_data_sent_to_hptdc ),
        .jtag_bus_in_use          ( JTAG_1_jtag_bus_in_use ),
        .data_from_hptdc          ( JTAG_1_data_from_hptdc ) 
        );

//--------JTAG
JTAG JTAG_2(
        // Inputs
        .tdi_pad_i                ( hptdc_tdi_2 ),
        .clk                      ( clk ),
        .rst                      ( rst ),
        .send_data_to_hptdc       ( ControlDecoder_0_send_data_to_hptdc_2 ),
        .get_data_from_hptdc      ( ControlDecoder_0_get_data_from_hptdc_2 ),
        .data_to_hptdc            ( ControlDecoder_0_data_to_hptdc_2 ),
        .jtag_instruction         ( ControlDecoder_0_jtag_instruction_2 ),
        // Outputs
        .tms_pad_o                ( hptdc_tms_2_net_0 ),
        .tck_pad_o                ( hptdc_tck_2_net_0 ),
        .trstn_pad_o              ( hptdc_trstn_2_net_0 ),
        .tdo_pad_o                ( hptdc_tdo_2_net_0 ),
        .data_received_from_hptdc ( JTAG_2_data_received_from_hptdc ),
        .data_sent_to_hptdc       ( JTAG_2_data_sent_to_hptdc ),
        .jtag_bus_in_use          ( JTAG_2_jtag_bus_in_use ),
        .data_from_hptdc          ( JTAG_2_data_from_hptdc ) 
        );

//--------JTAG
JTAG JTAG_3(
        // Inputs
        .tdi_pad_i                ( hptdc_tdi_3 ),
        .clk                      ( clk ),
        .rst                      ( rst ),
        .send_data_to_hptdc       ( ControlDecoder_0_send_data_to_hptdc_3 ),
        .get_data_from_hptdc      ( ControlDecoder_0_get_data_from_hptdc_3 ),
        .data_to_hptdc            ( ControlDecoder_0_data_to_hptdc_3 ),
        .jtag_instruction         ( ControlDecoder_0_jtag_instruction_3 ),
        // Outputs
        .tms_pad_o                ( hptdc_tms_3_net_0 ),
        .tck_pad_o                ( hptdc_tck_3_net_0 ),
        .trstn_pad_o              ( hptdc_trstn_3_net_0 ),
        .tdo_pad_o                ( hptdc_tdo_3_net_0 ),
        .data_received_from_hptdc ( JTAG_3_data_received_from_hptdc ),
        .data_sent_to_hptdc       ( JTAG_3_data_sent_to_hptdc ),
        .jtag_bus_in_use          ( JTAG_3_jtag_bus_in_use ),
        .data_from_hptdc          ( JTAG_3_data_from_hptdc ) 
        );


endmodule
