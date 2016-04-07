///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: SerialSynchronizer.v
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

module SerialSynchronizer(asyn_data_ready, i_data, clk, rst, o_data, syn_data_ready);

    input                   asyn_data_ready;
    input       [31:0]      i_data;
    input                   clk;
    input                   rst;
    output      [31:0]      o_data;
    output                  syn_data_ready;

    reg                     ready;
    reg                     duplicate;
    reg         [31:0]      data;

    always @(posedge rst) 
    begin   // Simulation assistance.
            data        = 33'b00000000000000000000000000000000000;
            ready       = 1'b0;
            duplicate   = 1'b0;
    end

    assign o_data           = data;
    assign syn_data_ready   = ready;

    always @(posedge clk)
    begin
        if (asyn_data_ready  == 1'b1)
        begin
            if (duplicate  == 1'b0)
            begin
                duplicate   =   1'b1;
                data        =   i_data;
                ready       =   1'b1;
            end
            else
                if( ready  == 1'b1)
                    ready       =   1'b0;
        end
        else 
        begin
            if (duplicate  == 1'b1)
            begin
                duplicate   =   1'b0;
            end
            if (ready  == 1'b1)
            begin
                ready       =   1'b0;
            end
        end
    end

endmodule
