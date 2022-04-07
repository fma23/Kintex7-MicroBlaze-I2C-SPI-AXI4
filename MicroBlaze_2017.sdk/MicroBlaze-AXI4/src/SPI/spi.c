#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xspi.h"
#include "sleep.h"
#include "spi.h"



int PLLConfig(XSpi *SpiInstancePtr, u16 SpiDeviceId, u32  WriteBuffer[], u32 ReadBuffer[])
{
	int Status;

	u8 WriteBufferArray[4]={0};
	u8 ReadBufferArray[4]={0};

	XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */

	ConfigPtr = XSpi_LookupConfig(SpiDeviceId);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpi_CfgInitialize(SpiInstancePtr, ConfigPtr,
				  ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	Status = XSpi_SetOptions(SpiInstancePtr, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION | XSP_CLK_PHASE_1_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XSpi_Start(SpiInstancePtr);

	XSpi_IntrGlobalDisable(SpiInstancePtr);
	xil_printf("%d",XSpi_GetStatusReg(SpiInstancePtr));

	XSpi_SetSlaveSelect(SpiInstancePtr, 0x01);

	for(int i=0; i<BUFFER_SIZE; i++)
  	{
		XSpi_SetSlaveSelect(SpiInstancePtr, 0x01);

		WriteBufferArray[0]= (WriteBuffer[i]) & 0xFF;
		WriteBufferArray[1]= (WriteBuffer[i] >> 8) & 0xFF;
		WriteBufferArray[2]= (WriteBuffer[i] >> 16) & 0xFF;
		WriteBufferArray[3]= (WriteBuffer[i] >> 24) & 0xFF;

	    XSpi_Transfer(SpiInstancePtr, &WriteBufferArray[0], &ReadBufferArray[0], 4);

	    XSpi_SetSlaveSelect(SpiInstancePtr, 0);
	}

	print("\n success");
	return XST_SUCCESS;
}
