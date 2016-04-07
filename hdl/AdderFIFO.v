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



module Adder( 
            clk                         , 
            rst                         ,
            orbit_number                ,
            run_number                  ,
            data_out                    , 
            transmit_request            , 
            transmit_complete           , 
            serial_transmit_complete    ,
            data_ready_for_transmit     ,

            data_in                     ,                           // Data input
            fifo_write_enable           ,                           // Write Enable
            full                                                    // FIFO full
            );

    input                           clk;
    input                           rst;
    input   [31:0]                  orbit_number;
    input   [23:0]                  run_number;
    output  [14:0]                  address_out;
    output  [63:0]                  data_out;
    input                           transmit_request;
    output                          transmit_complete;
    input                           serial_transmit_complete;
    output                          data_ready_for_transmit;


    input                           fifo_write_enable;
    input   [DATA_WIDTH-1:0]        data_in;
    input   [ADDR_WIDTH-1:0]        address_in;
    output                          full;
    output                          empty;
    output  [DATA_WIDTH-1:0]        data_out;
    output                          output_ready;



    //-----------Internal variables-------------------
    reg                             read_enable;
    reg     [31:0]                  data;
    reg     [63:0]                  data_out;
    reg     [10:0]                  edge_counter;
    reg     [8:0]                   counter;
     
    //-----------Variable assignments---------------
     

    reg     [3:0]                   trigger_type;
    reg     [23:0]                  LV1;
    reg     [11:0]                  BX;
    reg     [11:0]                  FEC_ID;
    reg     [3:0]                   FOV;
    reg                             H;
    reg                             F;
    reg     [3:0]                   TRB_FOV;
    reg     [1:0]                   GR1;
    reg     [1:0]                   GR2;
    reg     [2:0]                   TDC_ID;
    reg     [3:0]                   full_TDC_ID;
    reg     [11:0]                  error_flag;
    reg     [4:0]                   board_ID;
    reg     [11:0]                  event_ID;
    reg     [11:0]                  bunch_ID;
    reg     [1:0]                   dead_time;
    reg     [3:0]                   trigger_FIFO;
    reg     [7:0]                   HPTDC_L1_occupancy;
    reg     [31:0]                  run_type;
    reg     [12:0]                  word_count;
    reg     [2:0]                   FIFO_size;
    reg     [5:0]                   channel_ID              [127:0];
    reg     [18:0]                  leading_edge            [127:0];
    reg     [1:0]                   int1                    [127:0];
    reg     [18:0]                  trailing_edge           [127:0];
    reg     [1:0]                   int2                    [127:0];



    reg     [ADDR_WIDTH  :0]        status_cnt;
    reg     [DATA_WIDTH-1:0]        fifo_data;
    reg     [DATA_WIDTH-1:0]        fifo_ram    [RAM_DEPTH-1:0];
    reg     [63:0]                  temp_data_packet    [133:0];
    reg                             old_write_enable;
    reg                             full;

    always @ (posedge clk)
    begin 
        if (rst) 
        begin   
            read_enable                             = 0;
            counter                                 = 0;
            data_out                                = 0;
            status_cnt                              = 0;                // Read but no write.
            old_write_enable                        = write_enable;
            output_ready                            = 0;
            temp_packet_saved                       = 0;
        end 
        else if (( write_enable ) &&  ! ( old_write_enable ) 
                   && (status_cnt  != RAM_DEPTH)) 
        begin
            fifo_ram[status_cnt]                    = data_in;
            status_cnt                              = status_cnt + 1;
            old_write_enable                        = write_enable;
        end
        else if (( !temp_packet_saved ) && (status_cnt  != 0)) 
        begin
            status_cnt              = status_cnt - 1;                   // Write but no read.
            data_out                = fifo_ram[status_cnt];
            old_write_enable        = write_enable;
            output_ready            = 1;
        end 
        else 
        begin
            old_write_enable                        = write_enable;
            output_ready                            = 0;
        end
        if (status_cnt == (RAM_DEPTH-1))
            full                                    = 1;
        else
            full                                    = 0;
        if (status_cnt == 0)
            empty                                   = 1;
        else
            empty                                   = 0;

        // We should read the required data for one data packet
        // So we have two temporary data available, one is being sent, one is being produced




        if (transmit_request) 
        begin
            if (counter  == 0)
            begin
                if(status_cnt  != 0)
                begin
                    status_cnt                      = status_cnt - 1;   // Write but no read.
                    if(fifo_ram[status_cnt][31:28] == 4'b0001)
                    begin
                    data_out[63:60]                 = 4'b1010;
                    data_out[59:56]                 = `Trigger_Type;
                    data_out[55:32]                 = `LV1;
                    data_out[31:20]                 = fifo_ram[status_cnt][11:0];
                    data_out[19:8]                  = `FEC_ID;
                    data_out[7 :4]                  = `FOV;
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
                    data_out[58]                    = `F;
                    data_out[57:34]                 = run_number;
                    data_out[33:30]                 = `TRB_FOV;
                    data_out[29:28]                 = `FOV;
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
                if(status_cnt  != 0)
                begin
                    status_cnt                      = status_cnt - 1;   // Write but no read.
                    if(fifo_ram[status_cnt][31:28] == 4'b0100)
                    begin
                        data_out[63:59]                 = 5'00b101;
                        data_out[59:53]                 = counter - 6;
                        data_out[48:46]                 = fifo_ram[status_cnt][23:21];
                        data_out[45:27]                 = fifo_ram[status_cnt][18:0];
                        data_out[26:25]                 = fifo_ram[status_cnt][20:19];
                    end
                    status_cnt                      = status_cnt - 1;   // Write but no read.
                    if(fifo_ram[status_cnt][31:28] == 4'b0101)
                    begin
                        data_out[24:6]                  = fifo_ram[status_cnt][18:0];
                        data_out[5:4]                   = fifo_ram[status_cnt][20:19];
                        counter                         = counter   + 1;
                    end
                end
            end
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

