///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: SerialTransiver.v
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

module SerialTransmitter( data_ready, data_in, clk, rst, data_out, serial_transmit_complete, serial_clk);
    
    input       [63:0]      data_in;
    input                   clk;
    input                   rst;
    input                   data_ready;
    output                  data_out;
    output                  serial_transmit_complete;
    output                  serial_clk;      

    reg         [63:0]      buffer      [4:0];
    reg                     latched;
    reg         [5:0]       send_counter;
    reg         [3:0]       buffer_counter;
    reg                     serial_transmit_complete;

    //always @(posedge rst) 
    //begin   // Simulation assistance.
            //buffer[0]       = 32'b00000000000000000000000000000000000;
            //buffer[1]       = 32'b00000000000000000000000000000000000;
            //buffer[2]       = 32'b00000000000000000000000000000000000;
            //buffer[3]       = 32'b00000000000000000000000000000000000;
            //buffer[4]       = 32'b00000000000000000000000000000000000;
            //latched         = 1'b0;
            //buffer_counter  = 0;
            //send_counter    = 0;
    //end

    assign data_out   = latched;

    always @(posedge clk)
    begin
        serial_transmit_complete    =   0;
        if (buffer_counter > 0)
        begin
            if(send_counter == 0)
            begin
                latched         = 1'b1;
                send_counter    = send_counter + 1;
            end
            else if(send_counter < 65)
            begin
                latched         = buffer[buffer_counter][send_counter - 1];
                send_counter    = send_counter + 1;
            end
            else if(send_counter == 65)
            begin
                send_counter    = 0;
                buffer_counter  = buffer_counter - 1;
                latched         = 1'b0;
            end
        end
        else
            latched =   1'b0;
        if (data_ready == 1)
        begin
            buffer[buffer_counter + 1]  = data_in;
            buffer_counter          = buffer_counter + 1;
        end
        
    end

endmodule

