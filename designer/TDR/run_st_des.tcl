set_device \
    -family  SmartFusion2 \
    -die     PA4M5000_N \
    -package fg896 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def USE_CONSTRAINTS_FLOW 0
set_def USE_TCGEN 1
set_name TDR
set_workdir {D:\Dropbox\Documents\Projects\Firmware\Source\Final2\designer\TDR}
set_design_state pre_layout
