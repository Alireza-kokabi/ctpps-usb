set_component Core_sb_CCC_0_FCCC
# Microsemi Corp.
# Date: 2016-Mar-02 13:05:53
#

create_clock -period 10 [ get_pins { CCC_INST/CLK0_PAD } ]
create_generated_clock -multiply_by 30 -divide_by 30 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
create_generated_clock -multiply_by 30 -divide_by 9 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL1 } ]
create_generated_clock -multiply_by 30 -divide_by 9 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL2 } ]
create_generated_clock -multiply_by 30 -divide_by 9 -source [ get_pins { CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { CCC_INST/GL3 } ]
