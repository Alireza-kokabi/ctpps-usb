///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: USB.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S150> <Package::1152 FC>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`define PARALLEL1_write         0
`define PARALLEL1_read          1
`define SERIAL1                 2
`define PARALLEL2_write         3
`define PARALLEL2_read          4
`define SERIAL2                 5
`define PARALLEL3_write         6
`define PARALLEL3_read          7
`define SERIAL3                 8
`define PARALLEL4_write         9
`define PARALLEL4_read          10
`define SERIAL4                 11


// Top module
module USB(
                ifclk                           , 
                gpifadr                         ,
                pbpd                            ,
                cmd_data                        ,
                ren                             ,
                wen                             ,
                noe                             ,


 
                adder_data_in1                  ,
                adder_data_ready_for_transmit1  ,    
                ccu25_data1                     ,
                ccu25_strobe_in1                ,
                ccu25_strobe_out1               ,
    


                adder_data_in2                  ,
                adder_data_ready_for_transmit2  ,    
                ccu25_data2                     ,
                ccu25_strobe_in2                ,
                ccu25_strobe_out2               ,



                adder_data_in3                  ,
                adder_data_ready_for_transmit3  ,    
                ccu25_data3                     ,
                ccu25_strobe_in3                ,
                ccu25_strobe_out3               ,



                adder_data_in4                  ,
                adder_data_ready_for_transmit4  ,    
                ccu25_data4                     ,
                ccu25_strobe_in4                ,
                ccu25_strobe_out4               ,
    


                clk                         ,
                rst                         

              );

        
  
    // JTAG pins


    input               clk;
    input               rst;

    //Communication with programmer

    input               ifclk                           ; 
    input   [7:0]       gpifadr                         ;
    inout   [13:0]      pbpd                            ;
    input               cmd_data                        ;
    input               ren                             ;
    input               wen                             ;
    input               noe                             ;


    input   [63:0]      adder_data_in1                  ;
    input               adder_data_ready_for_transmit1  ;    
    inout   [7:0]       ccu25_data1                     ;
    input               ccu25_strobe_in1                ;
    output              ccu25_strobe_out1               ;


    input   [63:0]      adder_data_in2                  ;
    input               adder_data_ready_for_transmit2  ;    
    inout   [7:0]       ccu25_data2                     ;
    input               ccu25_strobe_in2                ;
    output              ccu25_strobe_out2               ;


    input   [63:0]      adder_data_in3                  ;
    input               adder_data_ready_for_transmit3  ;    
    inout   [7:0]       ccu25_data3                     ;
    input               ccu25_strobe_in3                ;
    output              ccu25_strobe_out3               ;


    input   [63:0]      adder_data_in4                  ;
    input               adder_data_ready_for_transmit4  ;    
    inout   [7:0]       ccu25_data4                     ;
    input               ccu25_strobe_in4                ;
    output              ccu25_strobe_out4               ;


  

  


 
    reg     [13  :0]    pbpd_temp;
    reg                 ccu25_strobe_out1;
    reg                 ccu25_strobe_out2;
    reg                 ccu25_strobe_out3;
    reg                 ccu25_strobe_out4;
    reg     [7:0]       ccu25_data_temp1;
    reg     [7:0]       ccu25_data_temp2;
    reg     [7:0]       ccu25_data_temp3;
    reg     [7:0]       ccu25_data_temp4;


    assign pbpd         = (ren)                     ? pbpd_temp         : 'bz;
    assign ccu25_data1  = (wen && ccu25_strobe_in1) ? ccu25_data_temp1  : 'bz;
    assign ccu25_data2  = (wen && ccu25_strobe_in2) ? ccu25_data_temp2  : 'bz;
    assign ccu25_data3  = (wen && ccu25_strobe_in3) ? ccu25_data_temp3  : 'bz;
    assign ccu25_data4  = (wen && ccu25_strobe_in4) ? ccu25_data_temp4  : 'bz;



    always @ (posedge ifclk)
    begin 
        if (rst) 
        begin   
        end
        if (wen) 
        begin
            case(gpifadr)
                `PARALLEL1_write:
                begin
                    ccu25_strobe_out1               = 1;
                    ccu25_data_temp1                = pbpd[7:0];
                end
                `PARALLEL2_write:
                begin
                    ccu25_strobe_out2               = 1;
                    ccu25_data_temp2                = pbpd[7:0];
                end
                `PARALLEL3_write:
                begin
                    ccu25_strobe_out3               = 1;
                    ccu25_data_temp3                = pbpd[7:0];
                end
                `PARALLEL4_write:
                begin
                    ccu25_strobe_out4               = 1;
                    ccu25_data_temp4                = pbpd[7:0];
                end
                `SERIAL1:
                begin
                    if(adder_data_ready_for_transmit1) 
                    begin   
                        pbpd_temp[7:0]              = adder_data_in1;
                    end
                end
                `SERIAL2:
                begin
                    if(adder_data_ready_for_transmit2) 
                    begin   
                        pbpd_temp[7:0]              = adder_data_in2;
                    end
                end
                `SERIAL3:
                begin
                    if(adder_data_ready_for_transmit3) 
                    begin   
                        pbpd_temp[7:0]              = adder_data_in3;
                    end
                end
                `SERIAL1:
                begin
                    if(adder_data_ready_for_transmit4) 
                    begin   
                        pbpd_temp[7:0]              = adder_data_in4;
                    end
                end
            endcase
        end
        if (ren) 
        begin
            case(gpifadr)
                `PARALLEL1_read:
                begin
                    if(ccu25_strobe_in1) 
                    begin   
                        pbpd_temp[7:0]              = ccu25_data1;
                    end
                end
                `PARALLEL2_read:
                begin
                    if(ccu25_strobe_in2) 
                    begin   
                        pbpd_temp[7:0]              = ccu25_data2;
                    end
                end
                `PARALLEL3_read:
                begin
                    if(ccu25_strobe_in3) 
                    begin   
                        pbpd_temp[7:0]              = ccu25_data3;
                    end
                end
                `PARALLEL4_read:
                begin
                    if(ccu25_strobe_in4) 
                    begin   
                        pbpd_temp[7:0]              = ccu25_data4;
                    end
                end
            endcase
        end
    end
endmodule 