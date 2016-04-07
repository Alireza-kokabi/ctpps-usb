///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: ProgramCombiner.v
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

module ProgramCombiner(programmer_data_send0, programmer_data_receive0, programmer_receive0, programmer_send0,
    programmer_data_send1, programmer_data_receive1, programmer_receive1, programmer_send1,
    programmer_data_send2, programmer_data_receive2, programmer_receive2, programmer_send2,
    programmer_data_send3, programmer_data_receive3, programmer_receive3, programmer_send3
    , clk, tx_data, tx_enable, tx_out, tx_empty, rx_data, rx_enable, rx_in, rx_empty );

    output  [800:0]     programmer_data_send0;
    input   [800:0]     programmer_data_receive0;
    input               programmer_receive0;
    output              programmer_send0;
    output  [800:0]     programmer_data_send1;
    input   [800:0]     programmer_data_receive1;
    input               programmer_receive1;
    output              programmer_send1;
    output  [800:0]     programmer_data_send2;
    input   [800:0]     programmer_data_receive2;
    input               programmer_receive2;
    output              programmer_send2;
    output  [800:0]     programmer_data_send3;
    input   [800:0]     programmer_data_receive3;
    input               programmer_receive3;
    output              programmer_send3;
    input               clk;

    output  [800:0]     tx_data        ;
    output              tx_enable      ;
    input               tx_out         ;
    input               tx_empty       ;
    input   [800:0]     rx_data        ;
    output              rx_enable      ;
    output              rx_in          ;
    input               rx_empty       ; 




    reg         [800:0]     buffer      [7:0];
    reg         [800:0]     tx;
    reg         [5:0]       receive_counter;
    reg         [3:0]       buffer_counter;
    reg                     tx_e;
    reg                     programmer_send_reg0;
    reg                     programmer_send_reg1;
    reg                     programmer_send_reg2;
    reg                     programmer_send_reg3;
    reg         [800:0]     programmer_data_send_reg0;
    reg         [800:0]     programmer_data_send_reg1;
    reg         [800:0]     programmer_data_send_reg2;
    reg         [800:0]     programmer_data_send_reg3;


    initial 
    begin   // Simulation assistance.
            buffer[0]       = 0;
            buffer[1]       = 0;
            buffer[2]       = 0;
            buffer[3]       = 0;
            buffer[4]       = 0;
            buffer[5]       = 0;
            buffer[6]       = 0;
            buffer[7]       = 0;
            buffer_counter  = 0;
    end

    assign  tx_data                 = tx;
    assign  tx_enable               = tx_e;
    assign  programmer_send0        = programmer_send_reg0;
    assign  programmer_send1        = programmer_send_reg1;
    assign  programmer_send2        = programmer_send_reg2;
    assign  programmer_send3        = programmer_send_reg3;
    assign  programmer_data_send0   = programmer_data_send_reg0;
    assign  programmer_data_send1   = programmer_data_send_reg1;
    assign  programmer_data_send2   = programmer_data_send_reg2;
    assign  programmer_data_send3   = programmer_data_send_reg3;


    always @(posedge clk)
    begin
        if (buffer_counter > 0)
            if (tx_empty == 1 )
            begin
                tx              = buffer[buffer_counter - 1];
                buffer_counter  = buffer_counter - 1;
                tx_e            = 1;
            end
        if (buffer_counter < 7)
        begin
            if (programmer_receive0 == 1)
                if (programmer_receive1 == 1)
                    if (programmer_receive2 == 1)
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive1;
                            buffer[buffer_counter + 3]  = programmer_data_receive2;
                            buffer[buffer_counter + 4]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 4;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive1;
                            buffer[buffer_counter + 3]  = programmer_data_receive2;
                            buffer_counter              = buffer_counter + 3;
                        end
                    else
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive1;
                            buffer[buffer_counter + 3]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 3;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive1;
                            buffer_counter              = buffer_counter + 2;
                        end
                else
                    if (programmer_receive2 == 1)
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive2;
                            buffer[buffer_counter + 3]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 3;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive2;
                            buffer_counter              = buffer_counter + 2;
                        end
                    else
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer[buffer_counter + 2]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 2;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive0;
                            buffer_counter              = buffer_counter + 1;
                        end
            else
                if (programmer_receive1 == 1)
                    if (programmer_receive2 == 1)
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive1;
                            buffer[buffer_counter + 2]  = programmer_data_receive2;
                            buffer[buffer_counter + 3]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 3;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive1;
                            buffer[buffer_counter + 2]  = programmer_data_receive2;
                            buffer_counter              = buffer_counter + 2;
                        end
                    else
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive1;
                            buffer[buffer_counter + 2]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 2;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive1;
                            buffer_counter              = buffer_counter + 1;
                        end
                else
                    if (programmer_receive2 == 1)
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive2;
                            buffer[buffer_counter + 2]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 2;
                        end
                        else
                        begin
                            buffer[buffer_counter + 1]  = programmer_data_receive2;
                            buffer_counter              = buffer_counter + 1;
                        end
                    else
                        if (programmer_receive3 == 1)
                        begin   
                            buffer[buffer_counter + 1]  = programmer_data_receive3;
                            buffer_counter              = buffer_counter + 1;
                        end
            
        end
        if (rx_empty == 0)
        begin
            programmer_send_reg0        = 1;
            programmer_send_reg1        = 1;
            programmer_send_reg2        = 1;
            programmer_send_reg3        = 1;
            programmer_data_send_reg0   = rx_data;
            programmer_data_send_reg1   = rx_data;
            programmer_data_send_reg2   = rx_data;
            programmer_data_send_reg3   = rx_data;
        end
    end


endmodule

