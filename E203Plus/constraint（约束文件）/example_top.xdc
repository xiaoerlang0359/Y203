##################################################################################################
##
##  Xilinx, Inc. 2010            www.xilinx.com
##  周二 4月 28 01:39:26 2020
##  Generated by MIG Version 4.1
##
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A35TI-CSG324
##                    Speedgrade:        -1L
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       3000 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K128M16XX-15E
## Data Width: 16
## Time Period: 3000
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF 0.675 [get_iobanks 34]















set_clock_groups -name async1 -asynchronous -group [get_clocks -of_objects [get_pins ip_mmcm2/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT2] -filter {IS_GENERATED && MASTER_CLOCK == CLK100MHZ}]
set_clock_groups -name async2 -asynchronous -group [get_clocks -of_objects [get_pins ip_mmcm2/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT2] -filter {IS_GENERATED && MASTER_CLOCK == sys_clk_pin}]
