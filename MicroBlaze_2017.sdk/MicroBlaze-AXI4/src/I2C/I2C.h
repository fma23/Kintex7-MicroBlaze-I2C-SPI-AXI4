#ifndef __axiI2C_H_
#define __axiI2C_H_

#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "xuartlite.h"

#include "xiic.h"
#include "xil_exception.h"
#include "xintc.h"
#include "xiic.h"

#define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
#define IIC_INTR_ID	XPAR_INTC_0_IIC_0_VEC_ID
#define INTC			XIntc
#define INTC_HANDLER	XIic_InterruptHandler


XIic IicInstance;

u8 WriteBuffer[20];	/* Write buffer for writing a page. */
u8 ReadBuffer[20];	/* Read buffer for reading a page.  */

int WriteI2CData(u8 RegAdd[],u16 ByteCount);
int ReadI2CData(u8 BufferPtr[], u16 ByteCount);

//int WriteRegister(u8 RegNum, u8 WriteValue,u16 ByteCount);
int WriteRegister(u8 *RegNum, u8 *WriteValue,u16 ByteCount);
int ReadRegister(u8 *RegAddress, u8 *ReadBuffer, u8 ByteCount);
int ConfigureI2C(void);


int WriteData(u8 WriteBuffer[], u16 ByteCount);
int ReadData(u8 *BufferPtr, u16 ByteCount);


int ConfigureI2C(void);

//new implementation
int I2C_initialize(void);
u8 I2CWriteByte(u8 *BufferPtr, u8 ByteCount);



#endif
