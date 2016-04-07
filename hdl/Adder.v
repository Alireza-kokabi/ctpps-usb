///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Adder.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S050> <Package::896 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


`define Number_of_Edges_in_Event    32
`define Trigger_Type                10
`define LV1                         2
`define BX                          30
`define FEC_ID                      10
`define FOV                         2
`define H                           0
`define D                           2



module Adder( clk, rst, event_number, bunch_number, run_number, address_out, data_in, empty, 
        input_ready, read_enable, data_out, transmit_request, transmit_complete, serial_transmit_complete,
        acquisition_counter, data_ready_for_transmit, threshold_voltage, bias_voltage);

    input                           clk;
    input                           rst;
    input   [23:0]                  event_number;
    input   [15:0]                  bunch_number;
    input   [23:0]                  run_number;
    output  [14:0]                  address_out;
    input   [23:0]                  data_in;
    input                           empty;
    input                           input_ready;
    output                          read_enable;
    output  [63:0]                  data_out;
    input                           transmit_request;
    output                          transmit_complete;
    input   [31:0]                  acquisition_counter;
    input                           serial_transmit_complete;
    output                          data_ready_for_transmit;
    input   [13:0]                  threshold_voltage;
    input   [13:0]                  bias_voltage;




    //-----------Internal variables-------------------
    reg                     read_enable;
    reg     [31:0]          data;
    reg     [63:0]          data_out;
    reg     [10:0]          edge_counter;
    reg     [8:0]           counter;
     
    //-----------Variable assignments---------------
     

    reg     [3:0]           trigger_type;
    reg     [23:0]          LV1;
    reg     [11:0]          BX;
    reg     [11:0]          FEC_ID;
    reg     [3:0]           FOV;
    reg                     H;
    reg                     F;
    reg     [3:0]           TRB_FOV;
    reg     [1:0]           GR1;
    reg     [1:0]           GR2;
    reg     [2:0]           TDC_ID;
    reg     [3:0]           full_TDC_ID;
    reg     [11:0]          error_flag;
    reg     [4:0]           board_ID;
    reg     [11:0]          event_ID;
    reg     [11:0]          bunch_ID;
    reg     [1:0]           dead_time;
    reg     [3:0]           trigger_FIFO;
    reg     [7:0]           HPTDC_L1_occupancy;
    reg     [31:0]          run_type;
    reg     [12:0]          word_count;
    reg     [2:0]           FIFO_size;
    reg     [5:0]           channel_ID              [127:0];
    reg     [18:0]          leading_edge            [127:0];
    reg     [1:0]           int1                    [127:0];
    reg     [18:0]          trailing_edge           [127:0];
    reg     [1:0]           int2                    [127:0];

    always @ (posedge clk)
    begin 
        if (rst) 
        begin   
            read_enable                             = 0;
            counter                                 = 0;
            data_out                                = 0;
        end 
        if (transmit_request) 
        begin
            if (counter  == 0)
            begin
                if(!empty)
                begin
                    read_enable                     = 1;                // Read but no write.
                    data_out[63:60]                 = 4'b1010;
                    data_out[59:56]                 = `Trigger_Type;
                    data_out[55:32]                 = `LV1;
                    data_out[31:20]                 = `BX;
                    data_out[19:8]                  = `FEC_ID;
                    data_out[7:4]                   = `FOV;
                    data_out[3]                     = `H;
                    data_out[1:0]                   = `D;
                    counter                         = counter   + 1;
                end
            end
            if (counter  == 1)
            begin
                if(input_ready)
                begin
                    data_out[63:59]                 = 5'b00001;
                    //data_out[55:32]               = `LV1;
                    //data_out[31:20]               = `BX;
                    //data_out[19:8]                = `FEC_ID;
                    //data_out[7:4]                 = `FOV;
                    //data_out[3]                   = `H;
                    //data_out[1:0]                 = `D;
                    counter                         = counter   + 1;
                end
            end
            if (counter  == 2)
            begin
                data_out[63:59]                 = 5'b00010;
                //data_out[55:32]               = `LV1;
                //data_out[31:20]               = `BX;
                //data_out[19:8]                = `FEC_ID;
                //data_out[7:4]                 = `FOV;
                //data_out[3]                   = `H;
                //data_out[1:0]                 = `D;
            end
            if (counter  == 3)
            begin
                data_out[63:59]                 = 5'b00011;
                //data_out[55:32]               = `LV1;
                //data_out[31:20]               = `BX;
                //data_out[19:8]                = `FEC_ID;
                //data_out[7:4]                 = `FOV;
                //data_out[3]                   = `H;
                //data_out[1:0]                 = `D;
            end
            if (counter  == 4)
            begin
                data_out[63:59]                 = 5'b00100;
                //data_out[55:32]               = `LV1;
                //data_out[31:20]               = `BX;
                //data_out[19:8]                = `FEC_ID;
                //data_out[7:4]                 = `FOV;
                //data_out[3]                   = `H;
                //data_out[1:0]                 = `D;
            end
            if (counter  == 5)
            begin
                data_out[63:59]                 = 5'b00101;
                //data_out[55:32]               = `LV1;
                //data_out[31:20]               = `BX;
                //data_out[19:8]                = `FEC_ID;
                //data_out[7:4]                 = `FOV;
                //data_out[3]                   = `H;
                //data_out[1:0]                 = `D;
            end
            if ((counter  >= 6) && (counter  <= 133))
            begin
                data_out[63:60]                 = 5'b1010;
                data_out[59:53]                 = counter - 6;

                //data_out[55:32]               = `LV1;
                //data_out[31:20]               = `BX;
                //data_out[19:8]                = `FEC_ID;
                //data_out[7:4]                 = `FOV;
                //data_out[3]                   = `H;
                //data_out[1:0]                 = `D;
            end
        end
        if (read_enable)
        begin
            read_enable             = 0;
            if (input_ready)
            begin
                if(data_in[31:28] == 4'b0001)
                begin
                    TDC_ID                      = data_in[27:24];       //data_in[27:24] is TDC ID
                    event_ID                    = data_in[23:12];       //data_in[23:12] is Event ID
                    bunch_ID                    = data_in[11:0];        //data_in[11:0] is Bunch ID
                end
                if(data_in[31:28] == 4'b0010)
                begin
                    //data_in[27:24] is TDC ID
                    //data_in[23:12] is Event ID
                    word_count                  = data_in[11:0];        //data_in[11:0] is Word Count
                end
                if(data_in[31:28] == 4'b0100)
                begin
                    //data_in[27:24] is TDC ID
                    //data_in[23:21] is Channel
                    //data_in[20:19] is IF
                    leading_edge[counter - 6]   = data_in[18:0];        //data_in[18:0] is Leading Edge
                end
                if(data_in[31:28] == 4'b0101)
                begin
                    //data_in[27:24] is TDC ID
                    //data_in[23:21] is Channel
                    //data_in[20:19] is IF
                    trailing_edge[counter - 6]  = data_in[18:0];        //data_in[18:0] is Trailing Edge
                end
                if(data_in[31:28] == 4'b0110)
                begin
                    //data_in[27:24] is TDC ID
                    error_flag                  = data_in[14:0];        //data_in[14:0] is Error Flag
                end
            end
            data_out                            = 0;
        end
    end 
    
 
  
endmodule

