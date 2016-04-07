///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: SerialReciever.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO2> <Die::M2GL025T> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module SerialReciever( i_s_data, serial_clk, rst, asyn_data_ready, p_data);

    input                   serial_clk;
    input                   i_s_data;
    output                  asyn_data_ready;
    output      [31:0]      p_data;
    input                   rst;
    
    reg         [32:0]      data;
    reg         [31:0]      latched;
    reg         [5 :0]      counter;
    reg                     d_enable;
    reg                     new_data;

    always @(posedge rst) 
    begin   // Simulation assistance.
            data        = 33'b00000000000000000000000000000000000;
            latched     = 33'b00000000000000000000000000000000000;
            d_enable    = 1'b0;
            new_data    = 1'b0;
            counter     = 1'b0;
    end

    assign p_dat            = latched;
    assign asyn_data_ready  = new_data;

    always @(posedge serial_clk)
    begin
        if(d_enable == 0)
            if(i_s_data == 1)
                d_enable        = 1;
        if(d_enable == 1)
            if(counter == 33)
                if(i_s_data == 0)
                begin
                    d_enable    = 0;
                    latched     = data[31:0];
                    new_data    = 1'b1;
                end
        if(d_enable == 1)
            if(counter < 33)
            begin
                data [counter]  = i_s_data;
                counter         = counter + 1;
            end
        if(counter == 30)
            new_data            = 1'b0;

    end

endmodule

