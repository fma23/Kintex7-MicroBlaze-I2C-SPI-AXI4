#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "gpio.h"

void driverInit(void)
{
	int status;
	status = XGpio_Initialize(&gpio,XPAR_AXI_GPIO_0_DEVICE_ID);
	if(status != XST_SUCCESS)
	{
		printf("failed to initialize GPIO \n");
	}
}

void configGPIO(void)
{
	XGpio_SetDataDirection(&gpio,1, 0);
}


void GpiosControl(void)
{
     XGpio_DiscreteWrite(&gpio,2,0x00000000);  //this is to enable Uart communication: GPIO 2 is used

	 XGpio_DiscreteWrite(&gpio,1,0x00000003);  //GPIO1 is used for LEDs control
	 sleep(1);
	 XGpio_DiscreteWrite(&gpio,1,0);
	 sleep(1);
}
