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

module ControlDecoder(clk, rst, qusb_ifclk, run_number, qusb_fd, qusb_ren, qusb_wen, 
        threshold_voltage, bias_voltage, transmit_request_0, transmit_complete_0, acquisition_counter_0,
        transmit_request_1, transmit_complete_1, acquisition_counter_1,
        transmit_request_2, transmit_complete_2, acquisition_counter_2,
        transmit_request_3, transmit_complete_3, acquisition_counter_3,
        data_to_hptdc_0, data_from_hptdc_0, send_data_to_hptdc_0, get_data_from_hptdc_0,
        data_to_hptdc_1, data_from_hptdc_1, send_data_to_hptdc_1, get_data_from_hptdc_1,
        data_to_hptdc_2, data_from_hptdc_2, send_data_to_hptdc_2, get_data_from_hptdc_2,
        data_to_hptdc_3, data_from_hptdc_3, send_data_to_hptdc_3, get_data_from_hptdc_3,
        data_received_from_hptdc_0, data_sent_to_hptdc_0, jtag_instruction_0, jtag_bus_in_use_0,
        data_received_from_hptdc_1, data_sent_to_hptdc_1, jtag_instruction_1, jtag_bus_in_use_1,
        data_received_from_hptdc_2, data_sent_to_hptdc_2, jtag_instruction_2, jtag_bus_in_use_2,
        data_received_from_hptdc_3, data_sent_to_hptdc_3, jtag_instruction_3, jtag_bus_in_use_3);

    input                           clk;
    input                           rst;
    output                          qusb_ifclk;
    inout           [15:0]          qusb_fd;
    output          [23:0]          run_number;
    input                           qusb_ren;
    input                           qusb_wen;
    output          [13:0]          threshold_voltage;
    output          [13:0]          bias_voltage;

    output                          transmit_request_0;
    input                           transmit_complete_0;
    output          [31:0]          acquisition_counter_0;

    output                          transmit_request_1;
    input                           transmit_complete_1;
    output          [31:0]          acquisition_counter_1;

    output                          transmit_request_2;
    input                           transmit_complete_2;
    output          [31:0]          acquisition_counter_2;

    output                          transmit_request_3;
    input                           transmit_complete_3;
    output          [31:0]          acquisition_counter_3;



    input                           jtag_bus_in_use_0;                //jtag bus is sending or receiving data
    output          [748:0]         data_to_hptdc_0;                  //data to be sent to hptdc
    input           [748:0]         data_from_hptdc_0;                //data received from the hptdc
    output                          send_data_to_hptdc_0;             //request sending data to hptdc
    input                           data_received_from_hptdc_0;       //announce receiving data from the hptdc
    input                           data_sent_to_hptdc_0;             //announce receiving data from the hptdc
    output                          get_data_from_hptdc_0;            //request receiving data from the hptdc
    output          [4  :0]         jtag_instruction_0;           

    input                           jtag_bus_in_use_1;                //jtag bus is sending or receiving data
    output          [748:0]         data_to_hptdc_1;                  //data to be sent to hptdc
    input           [748:0]         data_from_hptdc_1;                //data received from the hptdc
    output                          send_data_to_hptdc_1;             //request sending data to hptdc
    input                           data_received_from_hptdc_1;       //announce receiving data from the hptdc
    input                           data_sent_to_hptdc_1;             //announce receiving data from the hptdc
    output                          get_data_from_hptdc_1;            //request receiving data from the hptdc
    output          [4  :0]         jtag_instruction_1;           

    input                           jtag_bus_in_use_2;                //jtag bus is sending or receiving data
    output          [748:0]         data_to_hptdc_2;                  //data to be sent to hptdc
    input           [748:0]         data_from_hptdc_2;                //data received from the hptdc
    output                          send_data_to_hptdc_2;             //request sending data to hptdc
    input                           data_received_from_hptdc_2;       //announce receiving data from the hptdc
    input                           data_sent_to_hptdc_2;             //announce receiving data from the hptdc
    output                          get_data_from_hptdc_2;            //request receiving data from the hptdc
    output          [4  :0]         jtag_instruction_2;           

    input                           jtag_bus_in_use_3;                //jtag bus is sending or receiving data
    output          [748:0]         data_to_hptdc_3;                  //data to be sent to hptdc
    input           [748:0]         data_from_hptdc_3;                //data received from the hptdc
    output                          send_data_to_hptdc_3;             //request sending data to hptdc
    input                           data_received_from_hptdc_3;       //announce receiving data from the hptdc
    input                           data_sent_to_hptdc_3;             //announce receiving data from the hptdc
    output                          get_data_from_hptdc_3;            //request receiving data from the hptdc
    output          [4  :0]         jtag_instruction_3;           


    //-----------Internal variables-------------------
    reg             [748:0]         data_to_hptdc_0;
    reg                             send_data_to_hptdc_0;
    reg             [748:0]         data_to_hptdc_1;
    reg                             send_data_to_hptdc_1;
    reg             [748:0]         data_to_hptdc_2;
    reg                             send_data_to_hptdc_2;
    reg             [748:0]         data_to_hptdc_3;
    reg                             send_data_to_hptdc_3;
    reg             [13:0]          bias_voltage;
    reg             [13:0]          bias_buffer;
    reg             [13:0]          threshold_voltage;
    reg             [13:0]          threshold_buffer;
    reg             [7:0]           data;
    reg             [7:0]           reset;
    //reg             [8:0]           qusb_fd;
    reg             [7:0]           instruction_0;
    reg             [7:0]           instruction_1;
    reg             [7:0]           instruction_2;
    reg             [7:0]           instruction_3;
    reg             [9:0]           counter_0;
    reg             [9:0]           counter_1;
    reg             [9:0]           counter_2;
    reg             [9:0]           counter_3;
    reg             [31:0]          acquisition_counter_0;
    reg             [31:0]          acquisition_counter_1;
    reg             [31:0]          acquisition_counter_2;
    reg             [31:0]          acquisition_counter_3;
    reg             [31:0]          acquisition_buffer_0;
    reg             [31:0]          acquisition_buffer_1;
    reg             [31:0]          acquisition_buffer_2;
    reg             [31:0]          acquisition_buffer_3;
    reg                             old_qusb_wen;
    reg                             old_data_received_from_hptdc_0;
    reg                             latched_data_received_from_hptdc_0;
    reg                             old_data_received_from_hptdc_1;
    reg                             latched_data_received_from_hptdc_1;
    reg                             old_data_received_from_hptdc_2;
    reg                             latched_data_received_from_hptdc_2;
    reg                             old_data_received_from_hptdc_3;
    reg                             latched_data_received_from_hptdc_3;
    reg             [23:0]          run_number;
    reg             [23:0]          run_number_buffer;
    reg             [4:0]           jtag_instruction_0;
    reg             [748:0]         lathed_data_from_hptdc_0;
    reg             [4:0]           jtag_instruction_1;
    reg             [748:0]         lathed_data_from_hptdc_1;
    reg             [4:0]           jtag_instruction_2;
    reg             [748:0]         lathed_data_from_hptdc_2;
    reg             [4:0]           jtag_instruction_3;
    reg             [748:0]         lathed_data_from_hptdc_3;
    reg             [7:0]           qusb_fd_temp;
    reg                             get_data_from_hptdc_0;
    reg                             get_data_from_hptdc_1;
    reg                             get_data_from_hptdc_2;
    reg                             get_data_from_hptdc_3;
    //-----------Variable assignments---------------
     

  

    assign qusb_fd   = (qusb_ren) ? qusb_fd_temp : 'bz;
  
    always @ (posedge clk)
    begin 
        if (rst) 
        begin
            counter_0                                         = 40;
            acquisition_counter_0                             = 0;
        end 
        if (acquisition_counter_0 > 0 && transmit_complete_0 == 0)
            acquisition_counter_0                             = 0;
        if (qusb_wen && !old_qusb_wen) 
        begin
            if (qusb_fd[7] == 0)
            begin
                instruction_0                                 = qusb_fd;
                data_to_hptdc_0                               = 0;
                bias_buffer                                 = 0;
                run_number_buffer                           = 0;
                reset                                       = 0;
                acquisition_buffer_0                          = 0;
                threshold_buffer                            = 0;
                get_data_from_hptdc_0                         = 0;
//                qusb_ren                                    = 0;
                case(qusb_fd)
                    8'b01010000:                        //Setting HPTDC Setup Register
                    begin
                        counter_0                             = 93;
                        jtag_instruction_0                    = 4'b1000;
                    end
                    8'b01010001:                        //Getting HPTDC Setup Register
                    begin
                        counter_0                             = 93;
                        get_data_from_hptdc_0                 = 1;
                        jtag_instruction_0                    = 4'b1000;
                    end
                    8'b01010010:                        //Setting HPTDC Control Register
                    begin
                        counter_0                             = 6;
                        jtag_instruction_0                    = 4'b1001;
                    end
                    8'b01010011:                        //Getting HPTDC Control Register
                    begin
                        counter_0                             = 6;
                        get_data_from_hptdc_0                 = 1;
                        jtag_instruction_0                    = 4'b1001;
                    end
                    8'b01010101:                        //Getting HPTDC Status Register
                    begin
                        counter_0                             = 9;
                        jtag_instruction_0                    = 4'b1001;
                        get_data_from_hptdc_0                 = 1;
                    end
                    8'b01010110:                        //Setting HPTDC Internal Coretest Register
                    begin
                        counter_0                             = 107;
                        jtag_instruction_0                    = 4'b1011;
                    end
                    8'b01010111:                        //Getting HPTDC Internal Coretest Register
                    begin
                        counter_0                             = 107;
                        jtag_instruction_0                    = 4'b1011;
                        get_data_from_hptdc_0                 = 1;
                    end
                    8'b01011000:   counter_0                  = 1;         //Reset
                    8'b01011001:   counter_0                  = 4;         //Setting Run Number
                    8'b01011010:                        //Getting Run Number
                    begin
                        qusb_fd_temp                        = run_number;
//                        qusb_ren                            = 1;
                    end
                    8'b01011011:                        //Acquisition Start
                    begin
                        if (transmit_complete_0 == 1)
                            counter_0                         = 4;
                        else
                            counter_0                         = 40;
                    end
                    8'b01011100:   counter_0                  = 2;        //Setting Threshold Voltage
                    8'b01011101:   counter_0                  = 3;        //Setting Bias Voltage
                    8'b01011110:   counter_0                  = 1;        //Getting Firmware Version
                endcase
            end
            else if ((counter_0 > 0) && (counter_0 < 40))
            begin
                case(instruction_0)
                    8'b01010000:                       //Setting HPTDC Setup Register
                    begin
                        send_data_to_hptdc_0                  = 0;
                        data_to_hptdc_0                       = data_to_hptdc_0 << 7;
                        data_to_hptdc_0[6:0]                  = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01010001:                       //Getting HPTDC Setup Register
                    begin
                        if(latched_data_received_from_hptdc_0)
                        begin
//                            qusb_ren                        = 1;
                            qusb_fd_temp                    = lathed_data_from_hptdc_0;
                            lathed_data_from_hptdc_0          = lathed_data_from_hptdc_0 << 8;
                            counter_0                         = counter_0 - 1;
                        end 
                    end
                    8'b01010010:                       //Setting HPTDC Control Register
                    begin
                        send_data_to_hptdc_0                  = 0;
                        data_to_hptdc_0                       = data_to_hptdc_0 << 7;
                        data_to_hptdc_0[6:0]                  = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01010011:                       //Getting HPTDC Control Register
                    begin
                        if(latched_data_received_from_hptdc_0)
                        begin
 //                           qusb_ren                        = 1;
                            qusb_fd_temp                    = lathed_data_from_hptdc_0;
                            lathed_data_from_hptdc_0          = lathed_data_from_hptdc_0 << 7;
                            counter_0                         = counter_0 - 1;
                        end 
                    end
                    8'b01010110:                       //Setting HPTDC Internal Coretest Register
                    begin
                        send_data_to_hptdc_0                  = 0;
                        data_to_hptdc_0                       = data_to_hptdc_0 << 7;
                        data_to_hptdc_0[6:0]                  = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01010111:                       //Getting HPTDC Internal Coretest Register
                    begin
                        if(latched_data_received_from_hptdc_0)
                        begin
 //                           qusb_ren                        = 1;
                            qusb_fd_temp                    = lathed_data_from_hptdc_0;
                            lathed_data_from_hptdc_0          = lathed_data_from_hptdc_0 << 8;
                            counter_0                         = counter_0 - 1;
                       end 
                    end
                    8'b01011000:                       //Reset
                    begin
                        reset                               = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01011001:                       //Setting Run Number
                    begin
                        run_number_buffer                   = run_number_buffer << 7;
                        run_number_buffer[6:0]              = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01011011:                       //Acquisition Start
                    begin
                        acquisition_buffer_0                  = acquisition_buffer_0 << 7;
                        acquisition_buffer_0[6:0]             = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01011100:                       //Setting Threshold Voltage
                    begin
                        threshold_buffer                    = threshold_buffer << 7;
                        threshold_buffer[6:0]               = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                    8'b01011101:                       //Setting Bias Voltage
                    begin
                        bias_buffer                         = bias_buffer << 7;
                        bias_buffer[6:0]                    = qusb_fd;
                        counter_0                             = counter_0 - 1;
                    end
                endcase
            end
            else if (counter_0 == 0)
            begin
                case(instruction_0)
                    8'b01010000:                       //Setting HPTDC Setup Register
                    begin
                        if(jtag_bus_in_use_0)
                        begin
                            send_data_to_hptdc_0              = 1;
                            instruction_0                     = 0;
                        end
                    end
                    8'b01010001:                       //Getting HPTDC Setup Register
                    begin
                         latched_data_received_from_hptdc_0   = 0;
                    end
                    8'b01010010:                       //Setting HPTDC Control Register
                    begin
                        if(jtag_bus_in_use_0)
                        begin
                            send_data_to_hptdc_0              = 1;
                            instruction_0                     = 0;
                        end
                    end
                    8'b01010011:                       //Getting HPTDC Control Register
                    begin
                         latched_data_received_from_hptdc_0   = 0;
                    end
                    8'b01010110:                       //Setting HPTDC Internal Coretest Register
                    begin
                        if(jtag_bus_in_use_0)
                        begin
                            send_data_to_hptdc_0              = 1;
                            instruction_0                     = 0;
                        end
                    end
                    8'b01010111:                       //Getting HPTDC Internal Coretest Register
                    begin
                         latched_data_received_from_hptdc_0   = 0;
                    end
                    8'b01011000:                    //Reset
                    begin
                        instruction_0                         = 0;
                    end
                    8'b01011001:                    //Setting Run Number
                    begin
                        run_number                          = run_number_buffer;
                        instruction_0                         = 0;
                    end
                    8'b01011011:                    //Acquisition Start
                    begin
                        instruction_0                         = 0;
                        acquisition_counter_0                 = acquisition_buffer_0;
                    end
                    8'b01011100:                    //Setting Threshold Voltage
                    begin
                        threshold_voltage                   = threshold_buffer;
                        instruction_0                         = 0;
                    end
                    8'b01011101:                    //Setting Bias Voltage
                    begin
                        bias_voltage                        = bias_buffer;
                        instruction_0                         = 0;
                    end
                endcase
            end            
        end
        if (data_received_from_hptdc_0 && !old_data_received_from_hptdc_0) 
        begin
            lathed_data_from_hptdc_0                  = data_from_hptdc_0;
            latched_data_received_from_hptdc_0        = 1;            
        end
        old_data_received_from_hptdc_0                = data_received_from_hptdc_0;
        old_qusb_wen                                = qusb_wen;
    end 
    
 
  
endmodule

