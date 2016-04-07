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

module CCU25Interface( clk, rst, orbit_number, run_number, address_out, data_in, empty, 
        input_ready, read_enable, data_out, transmit_request, transmit_complete);

    input                           clk;
    input                           rst;
    inout           [31:0]          ccu25_data;
    input           [23:0]          run_number;
    output                          ccu25_strobe_in;
    input                           ccu25_strobe_out;
    output          [23:0]          threshold;
    output                          bias_voltage;
    output          [63:0]          data_out;
    input                           transmit_request;
    output                          transmit_complete;



    //-----------Internal variables-------------------
    reg                     read_enable;
    reg     [31:0]          data;
    reg     [63:0]          data_out;
     
    //-----------Variable assignments---------------
     

    
    always @ (posedge clk or posedge rst)
    begin 
        if (rst) 
        begin
        end 
        if (transmit_request && !empty) 
        begin
            read_enable             = 1;                // Read but no write.
            
            data_out                = 0;
        end
    end 
    
 
  
endmodule

