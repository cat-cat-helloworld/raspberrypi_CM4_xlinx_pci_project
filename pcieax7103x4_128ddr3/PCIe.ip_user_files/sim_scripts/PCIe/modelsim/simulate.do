onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L util_ds_buf_v2_01_a -L blk_mem_gen_v8_4_1 -L fifo_generator_v13_1_4 -L xdma_v4_0_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_1 -L axi_data_fifo_v2_1_14 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_15 -L axi_protocol_converter_v2_1_15 -L axi_clock_converter_v2_1_14 -L axi_dwidth_converter_v2_1_15 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.PCIe xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {PCIe.udo}

run -all

quit -force
