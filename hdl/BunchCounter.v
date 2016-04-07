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

module BunchCounter( clk, rst, clk_40, t1, bunch_number, event_number);

    input                           clk;
    input                           rst;
    input                           clk_40;
    input                           t1;
    output      [15:0]              bunch_number;
    output      [23:0]              event_number;
 

    
    always @ (posedge clk or posedge rst)
    begin : STATUS_COUNTER
        if (rst) 
        begin

        end 

    end 
    
 
  
endmodule

