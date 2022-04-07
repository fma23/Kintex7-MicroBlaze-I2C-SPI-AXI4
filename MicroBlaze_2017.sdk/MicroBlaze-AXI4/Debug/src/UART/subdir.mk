################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/UART/uart.c 

OBJS += \
./src/UART/uart.o 

C_DEPS += \
./src/UART/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/UART/%.o: ../src/UART/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I../../MicroBlaze-AXI4_bsp/microblaze_0/include -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\SPI" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\I2C" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\GPIOs" -I"C:\Users\fmabrouk\Documents\FPGA\MicroBlaze_2017\MicroBlaze_2017.sdk\MicroBlaze-AXI4\src\UART" -c -fmessage-length=0 -MT"$@" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


