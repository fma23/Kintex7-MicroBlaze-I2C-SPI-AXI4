
#ifndef _SPI_H_
#define _SPI_H_


#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"	/* XPAR parameters */
#include "xspi.h"
#include "sleep.h"

XSpi  SpiInstance;	 /* The instance of the SPI device */


#define SPI_DEVICE_ID		XPAR_AXI_QUAD_SPI_0_DEVICE_ID
#define BUFFER_SIZE		    36


int PLLConfig(XSpi *SpiInstancePtr, u16 SpiDeviceId, u32 WriteBuff[], u32 ReadBuff[]);


#endif /* _SPI_H_ */
