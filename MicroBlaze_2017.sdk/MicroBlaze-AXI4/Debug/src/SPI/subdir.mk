################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SPI/spi.c 

OBJS += \
./src/SPI/spi.o 

C_DEPS += \
./src/SPI/spi.d 


# Each subdirectory must supply rules for building sources it contributes
src/SPI/%.o: ../src/SPI/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I../../MicroBlaze-AXI4_bsp/microblaze_0/include -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\SPI" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\I2C" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\GPIOs" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\UART" -c -fmessage-length=0 -MT"$@" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


