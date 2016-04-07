set_device \
    -family  SmartFusion2 \
    -die     PA4M12000_N \
    -package fc1152 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def USE_TCGEN 1
set_def NETLIST_TYPE EDIF
set_name TDR
set_workdir {D:\DropAli\Dropbox\Documents\Projects\Firmware\Source\Final2\designer\TDR}
set_log     {D:\DropAli\Dropbox\Documents\Projects\Firmware\Source\Final2\designer\TDR\TDR_sdc.log}
set_design_state pre_layout
