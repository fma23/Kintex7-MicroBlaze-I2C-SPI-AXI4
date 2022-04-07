#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xintc.h"
#include "xbasic_types.h"
#include "spi.h"
#include "i2c.h"
#include "gpio.h"
#include "uart.h"

#include "main.h"
#include "Si5338.h"




Xuint32 *baseaddr_p = XPAR_ADDER_AXI4_IP_0_S00_AXI_BASEADDR;



int main()
{
    int status;
    u32 counter = 0;
	u8 UartDataReceived;

    init_platform();
    driverInit();
    configGPIO();
    configUART();


    // Test AXI4 interface
    xil_printf("AXI4 Adder IP Demo\n\r");
    *(baseaddr_p+0) = 77;      //Register 0
    *(baseaddr_p+1) = 23;      //Register 1

    xil_printf("Sum of first and second values is: %d \n\r", *(baseaddr_p+2));    //Register 2

    //configure PLL via SPI
    status = PLLConfig(&SpiInstance, SPI_DEVICE_ID, WriteBuff, ReadBuff);
    if (status != XST_SUCCESS) {
    		return XST_FAILURE;
     }

    //Read SPI status register
    status= XSpi_ReadReg(XPAR_SPI_0_BASEADDR, 0x60);
    xil_printf("SPI Status register value is:  %d\n", status);

     //Configure I2C bus
     //status = ConfigureI2C();
    status= I2C_initialize();
     if (status != XST_SUCCESS)
     {
       xil_printf("failed to configure I2C Bus \n");
     }

     //configure PLL: Si5338
     Configure_Si5338();


    while(1)
    {
		 counter++;

		 //toggle gpios
		 GpiosControl();

		 xil_printf("loop counter %d\n", counter);


		if(XUartLite_Recv(&UartLite,&UartDataReceived,1))
		{
			xil_printf("keyboard key received is  %d\n", UartDataReceived);

		}
		if(UartDataReceived == 101 || UartDataReceived ==69) // if letter E or e is received: ENABLE LEDS
		{
 		  *(baseaddr_p+0)|= 1<<30;     //set bit 30
 		  UartDataReceived = 0;
		}
		else if(UartDataReceived == 100 || UartDataReceived ==68) // if letter D or d is received: DISABLE LEDS
		{
			*(baseaddr_p+0)&= ~(1<<30); //clear bit 30
			UartDataReceived = 0;
		}
    }

    cleanup_platform();
    return 0;
}
