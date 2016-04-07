///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: FIFO.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S060> <Package::676 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
//-----------------------------------------------------
// Design Name : syn_fifo
// File Name   : syn_fifo.v
// Function    : Synchronous (single clock) FIFO
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module FIFO (
    clk             ,                           // Clock input
    rst             ,                           // Active high reset
    read_enable     ,                           // Read enable
    data_out        ,                           // Data Output
    address_in      ,                       
    output_ready    ,   
    empty                                       // FIFO empty
    

    , hptdc_token_out, hptdc_token_in, hptdc_token_bypass_in, hptdc_data
    , hptdc_data_ready, hptdc_get_data, hptdc_serial_in, hptdc_serial_bypass_in
    , hptdc_serial_out, hptdc_trigger, hptdc_event_reset, hptdc_bunch_reset
    , hptdc_error, hptdc_encode_control

    );    
     
    // FIFO constants
    parameter DATA_WIDTH            = 24;
    parameter ADDR_WIDTH            = 15;
    parameter RAM_DEPTH = (1 << ADDR_WIDTH);
    // Port Declarations
    input                           clk;
    input                           rst;
    input                           read_enable;
    input   [ADDR_WIDTH-1:0]        address_in;
    output                          empty;
    output  [DATA_WIDTH-1:0]        data_out;
    output                          output_ready;



    input                           hptdc_token_out;
    input                           hptdc_error;
    output                          hptdc_token_in;
    output                          hptdc_encode_control;
    output                          hptdc_bunch_reset;
    output                          hptdc_token_bypass_in;
    output                          hptdc_serial_in;
    output                          hptdc_serial_bypass_in;
    input                           hptdc_serial_out;
    output                          hptdc_trigger;
    input   [31:0]                  hptdc_data;
    output                          hptdc_event_reset;
    input                           hptdc_data_ready;
    output                          hptdc_get_data;


     
    //-----------Internal variables-------------------
    reg     [ADDR_WIDTH  :0]        status_cnt;
    reg     [DATA_WIDTH-1:0]        data_out;
    reg     [DATA_WIDTH-1:0]        fifo_ram    [RAM_DEPTH-1:0];
    reg                             old_write_enable;
    reg                             full;
    reg                             empty;
    reg                             output_ready;

    //-----------Variable assignments---------------
     

    assign hptdc_token_in           =   hptdc_token_out;
    assign hptdc_get_data           =   hptdc_data_ready;

    
    always @ (posedge clk)
    begin : STATUS_COUNTER
        if (rst) 
        begin
            status_cnt              = 0;                // Read but no write.
            data_out                = 0;
            old_write_enable        = hptdc_data_ready;
            output_ready            = 0;
        end 
        else if (( hptdc_data_ready ) &&  ! ( old_write_enable ) 
                   && (status_cnt  != RAM_DEPTH) && (hptdc_data [31:29] == 3'b010)) 
        begin
            fifo_ram[status_cnt]    = hptdc_data [DATA_WIDTH-1:0];
            status_cnt              = status_cnt + 1;
            old_write_enable        = hptdc_data_ready;
            output_ready            = 0;
        end
        else if (( read_enable ) && (status_cnt  != 0)) 
        begin
            status_cnt              = status_cnt - 1;   // Write but no read.
            data_out                = fifo_ram[status_cnt];
            old_write_enable        = hptdc_data_ready;
            output_ready            = 1;
        end 
        else 
        begin
            old_write_enable        = hptdc_data_ready;
            output_ready            = 0;
        end
        if (status_cnt == (RAM_DEPTH-1))
            full                    = 1;
        else
            full                    = 0;
        if (status_cnt == 0)
            empty                   = 1;
        else
            empty                   = 0;    
    end 
    
    //ram_dp_ar_aw #(DATA_WIDTH,ADDR_WIDTH)DP_RAM (
    //.address_0      (wr_pointer) ,              // address_0 input 
    //.data_0         (data_in)    ,              // data_0 bi-directional
    //.we_0           (read_enable),              // write enable
    //.oe_0           (1'b0)       ,              // output enable
    //.address_1      (rd_pointer) ,              // address_q input
    //.data_1         (data_ram)   ,              // data_1 bi-directional
    //.we_1           (1'b0)       ,              // Read enable
    //.oe_1           (read_enable)               // output enable
    //);     
  
 endmodule