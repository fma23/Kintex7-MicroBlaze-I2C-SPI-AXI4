#!/bin/bash -f
# Vivado (TM) v2017.1 (64-bit)
#
# Filename    : design_1.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Tue Mar 29 17:52:29 -0700 2022
# IP Build 1846188 on Fri Apr 14 20:52:08 MDT 2017 
#
# usage: design_1.sh [-help]
# usage: design_1.sh [-lib_map_path]
# usage: design_1.sh [-noclean_files]
# usage: design_1.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'design_1.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm microblaze_v10_0_2 axi_lite_ipif_v3_0_4 axi_intc_v4_1_9 xlconcat_v2_1_1 mdm_v3_2_9 lib_cdc_v1_0_2 proc_sys_reset_v5_0_11 lmb_v10_v3_0_9 lmb_bram_if_cntlr_v4_0_11 blk_mem_gen_v8_3_6 interrupt_control_v3_1_4 axi_gpio_v2_0_14 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_12 fifo_generator_v13_1_4 axi_data_fifo_v2_1_11 axi_crossbar_v2_1_13 lib_pkg_v1_0_2 lib_srl_fifo_v1_0_2 axi_uartlite_v2_0_16 axi_iic_v2_0_15 dist_mem_gen_v8_0_11 lib_fifo_v1_0_8 axi_quad_spi_v3_2_11)

# Simulation root library directory
sim_lib_dir="vcs"

# Script info
echo -e "design_1.sh - Script generated by export_simulation (Vivado v2017.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinxx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work microblaze_v10_0_2 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/796f/hdl/microblaze_v10_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_9 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/a811/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_9 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/359c/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_11 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_v10_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
    "$ref_dir/../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_11 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5376/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_3_6 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_14 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_12 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_1_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_1_4 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_1_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_11 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_13 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_16 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/b362/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_iic_v2_0_15 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7442/hdl/axi_iic_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \
    "$ref_dir/../../../bd/design_1/hdl/design_1.vhd" \
    "$ref_dir/../../../bd/design_1/ipshared/1119/hdl/Adder_AXI4_IP_v1_0_S00_AXI.vhd" \
    "$ref_dir/../../../bd/design_1/ipshared/1119/src/Led.vhd" \
    "$ref_dir/../../../bd/design_1/ipshared/1119/src/TopLevel.vhd" \
    "$ref_dir/../../../bd/design_1/ipshared/1119/src/adder.vhd" \
    "$ref_dir/../../../bd/design_1/ipshared/1119/hdl/Adder_AXI4_IP_v1_0.vhd" \
    "$ref_dir/../../../bd/design_1/ip/design_1_Adder_AXI4_IP_0_0/sim/design_1_Adder_AXI4_IP_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work dist_mem_gen_v8_0_11 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/65a4" +incdir+"$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/ec0d/simulation/dist_mem_gen_v8_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_fifo_v1_0_8 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_quad_spi_v3_2_11 $vhdlan_opts \
    "$ref_dir/../../../../MicroBlaze_2017.srcs/sources_1/bd/design_1/ipshared/4c23/hdl/axi_quad_spi_v3_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.design_1 xil_defaultlib.glbl -o design_1_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./design_1_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./design_1.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key design_1_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc design_1_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./design_1.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: design_1.sh [-help]\n\
Usage: design_1.sh [-lib_map_path]\n\
Usage: design_1.sh [-reset_run]\n\
Usage: design_1.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
