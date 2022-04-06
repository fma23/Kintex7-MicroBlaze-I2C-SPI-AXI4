set_property IOSTANDARD LVCMOS33 [get_ports clk10mhz]
set_property PACKAGE_PIN G22 [get_ports clk10mhz]
create_clock -period 100.000 -name clk10mhz -waveform {0.000 50.000} -add [get_ports clk10mhz]


set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CLK_N]
set_property PACKAGE_PIN D8 [get_ports FPGA_CLK_N]
create_clock -period 100.000 -name FPGA_CLK_N -waveform {0.000 50.000} -add [get_ports FPGA_CLK_N]

set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CLK_P]
set_property PACKAGE_PIN D9 [get_ports FPGA_CLK_P]
create_clock -period 100.000 -name FPGA_CLK_P -waveform {0.000 50.000} -add [get_ports FPGA_CLK_P]

# reset
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
set_property PACKAGE_PIN B20 [get_ports reset_n]

#-------------------------------------------------------------------------------
# FPGA CONTROLLED LEDS
#-------------------------------------------------------------------------------






#-------------------------------------------------------------------------------
# FPGA UART ROUTABLE TO CPU UART OR EXTERNAL CONNECTOR
#-------------------------------------------------------------------------------
#set_property PACKAGE_PIN G21        [get_ports UARTEN_n[0]]
set_property PACKAGE_PIN L23 [get_ports UARTRX]
set_property PACKAGE_PIN L22 [get_ports UARTTX]

#set_property IOSTANDARD LVCMOS33    [get_ports UARTEN_n[0]]
#set_property DRIVE 12               [get_ports UARTEN_n[0]]
#set_property SLEW SLOW              [get_ports UARTEN_n[0]]

set_property IOSTANDARD LVCMOS33 [get_ports UARTRX]

set_property IOSTANDARD LVCMOS33 [get_ports UARTTX]
set_property DRIVE 12 [get_ports UARTTX]
set_property SLEW SLOW [get_ports UARTTX]


#-------------------------------------------------------------------------------
# I2C interface
#-------------------------------------------------------------------------------


#set_input_delay -clock [get_clocks tcxo_clk] -min -add_delay 2.000 [get_ports Reset_n]
#set_input_delay -clock [get_clocks tcxo_clk] -max -add_delay 10.000 [get_ports Reset_n]
#set_output_delay -clock [get_clocks tcxo_clk] -min -add_delay 0.000 [get_ports FPGA_LED7]
#set_output_delay -clock [get_clocks tcxo_clk] -max -add_delay 2.000 [get_ports FPGA_LED7]


#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports UARTRX]
set_property IOSTANDARD LVCMOS33 [get_ports UARTRX]

set_property IOSTANDARD LVCMOS33 [get_ports FPGA_LED1]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_LED2]
set_property PACKAGE_PIN G15 [get_ports FPGA_LED1]
set_property PACKAGE_PIN J26 [get_ports FPGA_LED2]

set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_o[1]}]
set_property PACKAGE_PIN F18 [get_ports {gpio_io_o[0]}]
set_property PACKAGE_PIN F15 [get_ports {gpio_io_o[1]}]


set_property IOSTANDARD LVCMOS33 [get_ports UART_EN]
set_property PACKAGE_PIN G21 [get_ports UART_EN]

set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_sda_io]
set_property PACKAGE_PIN D26 [get_ports iic_rtl_sda_io]
set_property PACKAGE_PIN C24 [get_ports iic_rtl_scl_io]



#set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS[0]}]
#set_property PACKAGE_PIN Y20 [get_ports {SPI_CS[0]}]


#set_property PACKAGE_PIN U21 [get_ports SPI_MISO]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI_MISO]

#set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI]
#set_property PACKAGE_PIN AE21 [get_ports SPI_MOSI]

#set_property IOSTANDARD LVCMOS33 [get_ports SPI_SCK]
#set_property PACKAGE_PIN W20 [get_ports SPI_SCK]


#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io0_i]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io0_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io1_o]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io1_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_sck_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_ss_t]


#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io0_i]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io0_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io1_o]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io1_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_sck_t]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_ss_t]




set_property IOSTANDARD LVCMOS33 [get_ports {spi_rtl_ss_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_rtl_sck_io]

set_property PACKAGE_PIN Y20 [get_ports {spi_rtl_ss_io[0]}]
set_property PACKAGE_PIN W20 [get_ports spi_rtl_sck_io]
set_property PACKAGE_PIN AE21 [get_ports spi_rtl_io0_io]
set_property PACKAGE_PIN U21 [get_ports spi_rtl_io1_io]
