///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: BunchCounter.v
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

module ParallelPortHPTDC( hptdc_token_out, hptdc_token_in, hptdc_token_bypass_in, hptdc_data
        , hptdc_data_ready, hptdc_get_data, clk, data_out, data_ready, full, fifo_picked_data
        , hptdc_serial_in, hptdc_serial_bypass_in, hptdc_serial_out, hptdc_trigger
        , hptdc_event_reset, hptdc_bunch_reset, hptdc_error, hptdc_encode_control);

    input                   hptdc_token_out;
    input                   hptdc_error;
    output                  hptdc_token_in;
    output                  hptdc_encode_control;
    output                  hptdc_bunch_reset;
    output                  hptdc_token_bypass_in;
    output                  hptdc_serial_in;
    output                  hptdc_serial_bypass_in;
    input                   hptdc_serial_out;
    output                  hptdc_trigger;
    input       [31:0]      hptdc_data;
    output                  hptdc_event_reset;
    input                   hptdc_data_ready;
    output                  hptdc_get_data;


    input                   clk; 
   
    input                   full;               //shows that the FIFO is full
    output      [31:0]      data_out;           //data to be sent to FIFO
    output                  data_ready;         //data ready for FIFO
    input                   fifo_picked_data;   //shows that FIFO picked the last data

    

    reg         [31:0]      data_out;           
    reg                     data_ready;
    reg                     temp_data_ready;
   

    assign hptdc_token_in       =   hptdc_token_out;
    assign hptdc_get_data       =   hptdc_data_ready;

    always @ (posedge clk)
    begin
        if (hptdc_data_ready) 
        begin
            data_out            =   hptdc_data; // Read but no write.
            if (!full && fifo_picked_data)
                data_ready      =   1;
            else
                temp_data_ready =   1;
        end
    end
endmodule

