`define STATE_test_logic_reset  4'hF
`define STATE_run_test_idle     4'hC
`define STATE_select_dr_scan    4'h7
`define STATE_capture_dr        4'h6
`define STATE_shift_dr          4'h2
`define STATE_exit1_dr          4'h1
`define STATE_pause_dr          4'h3
`define STATE_exit2_dr          4'h0
`define STATE_update_dr         4'h5
`define STATE_select_ir_scan    4'h4
`define STATE_capture_ir        4'hE
`define STATE_shift_ir          4'hA
`define STATE_exit1_ir          4'h9
`define STATE_pause_ir          4'hB
`define STATE_exit2_ir          4'h8
`define STATE_update_ir         4'hD
`define IR_LENGTH               5
`define DR_LENGTH               32


// Top module
module JTAG(
                // JTAG pads
                tms_pad_o                           , 
                tck_pad_o                           , 
                trstn_pad_o                         , 
                tdi_pad_i                           , 
                tdo_pad_o                           , 
                
                clk                                 ,
                rst                                 ,

                //Communication with programmer
                send_data_to_hptdc                  ,
                data_to_hptdc                       ,
                data_received_from_hptdc            ,
                data_sent_to_hptdc                  ,
                data_from_hptdc                     ,
                get_data_from_hptdc                 ,
                jtag_bus_in_use                     ,
                jtag_instruction
 
              );

        
  
    // JTAG pins
    output              tms_pad_o;      // JTAG test mode select pad
    output              tck_pad_o;      // JTAG test clock pad
    output              trstn_pad_o;    // JTAG test reset pad
    input               tdi_pad_i;      // JTAG test data input pad
    output              tdo_pad_o;      // JTAG test data output pad


    input               clk;
    input               rst;

    //Communication with programmer

    input   [748:0]     data_to_hptdc;
    output  [748:0]     data_from_hptdc;
    input               send_data_to_hptdc;
    input               get_data_from_hptdc;
    output              data_received_from_hptdc;
    output              data_sent_to_hptdc;
    output              jtag_bus_in_use;
    input   [4  :0]     jtag_instruction;

    // TDO and enable
    reg                 tdo_pad_o;
    reg                 tms_pad_o;      // JTAG test mode select pad
    reg                 trstn_pad_o;
    reg                 data_received_from_hptdc;
    reg                 data_sent_to_hptdc;
    reg                 data_length;
    reg                 jtag_bus_in_use;

    // Registers



    /**********************************************************************************
    *                                                                                 *
    *   TAP State Machine: Fully JTAG compliant                                       *
    *                                                                                 *
    **********************************************************************************/
    // Definition of machine state values.  We could one-hot encode this, and use 16
    // registers, but this uses binary encoding for the minimum of 4 DFF's instead.


    reg     [3:  0]     TAP_state;          // current state of the TAP controller
    reg     [3:  0]     next_TAP_state;     // state TAP will take at next rising TCK, combinational signal

    reg     [748:0]     data_to;
    reg     [748:0]     data_from_hptdc;
    reg     [4  :0]     instruction_to;
    reg                 ir_loop;
    reg     [9  :0]     loop_counter;
    reg                 get_data;           // define the current direction of data communication in jtag bus



    //always @(posedge rst) 
    //begin   // Simulation assistance.
            //TAP_state           = `STATE_test_logic_reset;
            //next_TAP_state      = `STATE_run_test_idle;
            //tms_pad_o           = 1;
            //ir_loop             = 1;
            //loop_counter        = 0;
    //end


     
     


    assign      tck_pad_o       = clk;




    // Determination of next state; purely combinatorial
    always @ (negedge clk)
    begin
        

        if (TAP_state == `STATE_test_logic_reset)
            jtag_bus_in_use                 =   0;
        else if (TAP_state == `STATE_run_test_idle)
            jtag_bus_in_use                 =   0;
        else
            jtag_bus_in_use                 =   1;



        if (TAP_state == `STATE_shift_dr)
        begin
            tdo_pad_o                       =   data_to[loop_counter];
            data_from_hptdc[loop_counter]   =   tdi_pad_i;
        end
        if (TAP_state == `STATE_shift_ir)
        begin
            tdo_pad_o                       =   instruction_to[loop_counter];
        end


        trstn_pad_o     =  ~rst;
        if(trstn_pad_o == 0)
        begin
            TAP_state           = `STATE_test_logic_reset;
            next_TAP_state      = `STATE_run_test_idle;
            tms_pad_o           = 1'b0;
            ir_loop             = 1;
            loop_counter        = 0;
        end
        else
        begin
            TAP_state = next_TAP_state;
            data_received_from_hptdc        = 0;
            data_sent_to_hptdc              = 0;
            case(TAP_state)
                `STATE_test_logic_reset:
                begin
                    next_TAP_state                  = `STATE_select_dr_scan;
                    tms_pad_o                       = 0;                             
                end
                `STATE_run_test_idle:
                begin
                    if(send_data_to_hptdc == 1)
                    begin
                        get_data                            = 0;
                        data_to                             = data_to_hptdc;
                        case(jtag_instruction)
                            4'b0000:   data_length          = 83;   //Boundary scan for test of inter-chip connections on module.
                            4'b0001:   data_length          = 32;   //Scan out of chip identification code.
                            4'b0010:   data_length          = 0;    //Sample of all chip pins via boundary scan registers.
                            4'b0011:   data_length          = 0;    //Using boundary scan registers to test chip itself.
                            4'b0100:   data_length          = 10;   //Memory self tests (production testing)
                            4'b0101:   data_length          = 1829; //Scan of all internal flip-flops (production testing)
                            4'b0110:   data_length          = 0;    //NOT IMPLEMENTED.
                            4'b0111:   data_length          = 33;   //Read of TDC output data
                            4'b1000:   data_length          = 647;  //Load/read of setup data.
                            4'b1001:   data_length          = 40;   //Load/read of control information.
                            4'b1010:   data_length          = 62;   //Read of status information.
                            4'b1011:   data_length          = 749;  //Access to internal coretest scan registers (production testing)
                            4'b1111:   data_length          = 0;    //BYPASS.
                        endcase
                        next_TAP_state                  = `STATE_select_dr_scan; 
                        tms_pad_o                       = 1;    
                    end
                    else if(get_data_from_hptdc == 1) 
                    begin
                        get_data                            = 1;
                        case(jtag_instruction)
                            4'b0000:   data_length          = 83;   //Boundary scan for test of inter-chip connections on module.
                            4'b0001:   data_length          = 32;   //Scan out of chip identification code.
                            4'b0010:   data_length          = 0;    //Sample of all chip pins via boundary scan registers.
                            4'b0011:   data_length          = 0;    //Using boundary scan registers to test chip itself.
                            4'b0100:   data_length          = 10;   //Memory self tests (production testing)
                            4'b0101:   data_length          = 1829; //Scan of all internal flip-flops (production testing)
                            4'b0110:   data_length          = 0;    //NOT IMPLEMENTED.
                            4'b0111:   data_length          = 33;   //Read of TDC output data
                            4'b1000:   data_length          = 647;  //Load/read of setup data.
                            4'b1001:   data_length          = 40;   //Load/read of control information.
                            4'b1010:   data_length          = 62;   //Read of status information.
                            4'b1011:   data_length          = 749;  //Access to internal coretest scan registers (production testing)
                            4'b1111:   data_length          = 0;    //BYPASS.
                        endcase
                        next_TAP_state                  = `STATE_select_dr_scan; 
                        tms_pad_o                       = 1;
                    end
                    else
                    begin
                        next_TAP_state                  = `STATE_run_test_idle; 
                        tms_pad_o                       = 0;
                    end
                end
                `STATE_select_dr_scan:
                begin
                    if(ir_loop  == 1)
                    begin
                        tms_pad_o                       = 1;
                        next_TAP_state                  = `STATE_select_ir_scan;
                    end
                    else
                    begin
                        tms_pad_o                       = 0;
                        next_TAP_state                  = `STATE_capture_dr;
                    end
                end
                `STATE_capture_dr:
                begin
                    next_TAP_state                      = `STATE_shift_dr;
                    tms_pad_o                           = 1;
                    loop_counter                        = 0;
                    data_from_hptdc                     = 749'b0;
                end
                `STATE_shift_dr:
                begin
                    if(loop_counter  < data_length)
                    begin
                        tms_pad_o                       = 0;
                        loop_counter                    = loop_counter + 1;
                        next_TAP_state                  = `STATE_shift_dr;
                    end
                    else
                    begin
                        tms_pad_o                       = 1;
                        loop_counter                    = 0;
                        next_TAP_state                  = `STATE_exit1_dr; 
                        if(get_data  == 1)
                            data_received_from_hptdc    = 1;
                        else
                            data_sent_to_hptdc          = 0;
                    end
                end
                `STATE_exit1_dr:
                begin
                    next_TAP_state                      = `STATE_update_dr; 
                    tms_pad_o                           = 1;
                end
                `STATE_pause_dr:
                begin
                    next_TAP_state                      = `STATE_exit2_dr;
                    tms_pad_o                           = 1;
                end
                `STATE_exit2_dr:
                begin
                    next_TAP_state                      = `STATE_update_dr; 
                    tms_pad_o                           = 1;
                end
                `STATE_update_dr:
                begin
                    next_TAP_state                      = `STATE_select_dr_scan; 
                    ir_loop                             = 1;
                    tms_pad_o                           = 1'b1;
                end
                `STATE_select_ir_scan:
                begin
                    tms_pad_o                           = 0;
                    next_TAP_state                      = `STATE_capture_ir;
                end
                `STATE_capture_ir:
                begin
                    next_TAP_state                      = `STATE_shift_ir;
                    tms_pad_o                           = 0;
                    loop_counter                        = 0;
                end
                `STATE_shift_ir:
                begin
                    if(loop_counter  < `IR_LENGTH)
                    begin
                        tms_pad_o                       = 0;
                        loop_counter                    = loop_counter + 1;
                        next_TAP_state                  = `STATE_shift_ir;
                    end
                    else
                    begin
                        tms_pad_o                       = 1;
                        loop_counter                    = 0;
                        next_TAP_state                  = `STATE_exit1_ir; 
                    end
                end
                `STATE_exit1_ir:
                begin
                    next_TAP_state                      = `STATE_update_ir; 
                    tms_pad_o                           = 1;
                end
                `STATE_pause_ir:
                begin
                    next_TAP_state                      = `STATE_exit2_ir;
                    tms_pad_o                           = 1;
                end 
                `STATE_exit2_ir:
                begin
                    next_TAP_state                      = `STATE_update_ir; 
                    tms_pad_o                           = 1;
                end
                `STATE_update_ir:
                begin
                    next_TAP_state                      = `STATE_select_dr_scan; 
                    ir_loop                             = 0;
                    tms_pad_o                           = 1;
                end
                default: 
                begin
                    next_TAP_state                      = `STATE_test_logic_reset;  // can't actually happen
                    tms_pad_o                           = 0;
                end
            endcase
        end
    end



  


 


endmodule

