##################PCIe reset define####################################
set_property PACKAGE_PIN J20 [get_ports sys_rst_n] 
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
######################define flash loading speed#######################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
########################################################################
set_false_path -from [get_ports sys_rst_n]
###########################define PCIe clock############################
create_clock -period 10.000 -name sys_clk [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN F10 [get_ports sys_clk_clk_p]
###########################define system  clock##########################
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_ddr_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_ddr_clk_n]
set_property PACKAGE_PIN R4 [get_ports sys_ddr_clk_p]
set_property PACKAGE_PIN T4 [get_ports sys_ddr_clk_n]
###########################define system reset##########################
set_property PACKAGE_PIN T6 [get_ports sys_rst]
set_property IOSTANDARD LVCMOS15 [get_ports sys_rst]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets PCIe_i/clk_wiz_0/inst/clk_in1_PCIe_clk_wiz_0_0] 

