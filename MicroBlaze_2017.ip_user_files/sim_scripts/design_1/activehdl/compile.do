vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v10_0_2
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_9
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/mdm_v3_2_9
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_11
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_11
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_14
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_12
vlib activehdl/fifo_generator_v13_1_4
vlib activehdl/axi_data_fifo_v2_1_11
vlib activehdl/axi_crossbar_v2_1_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_16
vlib activehdl/axi_iic_v2_0_15
vlib activehdl/dist_mem_gen_v8_0_11
vlib activehdl/lib_fifo_v1_0_8
vlib activehdl/axi_quad_spi_v3_2_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v10_0_2 activehdl/microblaze_v10_0_2
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_9 activehdl/axi_intc_v4_1_9
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap mdm_v3_2_9 activehdl/mdm_v3_2_9
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_11 activehdl/lmb_bram_if_cntlr_v4_0_11
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_14 activehdl/axi_gpio_v2_0_14
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_12 activehdl/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 activehdl/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 activehdl/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 activehdl/axi_crossbar_v2_1_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_16 activehdl/axi_uartlite_v2_0_16
vmap axi_iic_v2_0_15 activehdl/axi_iic_v2_0_15
vmap dist_mem_gen_v8_0_11 activehdl/dist_mem_gen_v8_0_11
vmap lib_fifo_v1_0_8 activehdl/lib_fifo_v1_0_8
vmap axi_quad_spi_v3_2_11 activehdl/axi_quad_spi_v3_2_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_2 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/796f/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_9 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/a811/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_9 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/359c/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_11 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5376/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_14 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_16 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/b362/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work axi_iic_v2_0_15 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7442/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \
"../../../bd/design_1/ipshared/1119/hdl/Adder_AXI4_IP_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/1119/src/Led.vhd" \
"../../../bd/design_1/ipshared/1119/src/TopLevel.vhd" \
"../../../bd/design_1/ipshared/1119/src/adder.vhd" \
"../../../bd/design_1/ipshared/1119/hdl/Adder_AXI4_IP_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_Adder_AXI4_IP_0_0/sim/design_1_Adder_AXI4_IP_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_11  -v2k5 "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" "+incdir+../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ec0d/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_8 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_11 -93 \
"../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/4c23/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

