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


XIic IicInstance;

int WriteI2CData(u8 RegAdd[],u16 ByteCount);
int ReadI2CData(u8 BufferPtr[], u16 ByteCount);

//int WriteRegister(u8 RegNum, u8 WriteValue,u16 ByteCount);
int WriteRegister(u8 *RegNum, u8 *WriteValue,u16 ByteCount);
int ReadRegister(u8 *RegAddress, u8 *ReadBuffer, u8 ByteCount);
int ConfigureI2C(void);


int WriteData(u8 WriteBuffer[], u16 ByteCount);
int ReadData(u8 *BufferPtr, u16 ByteCount);


int ConfigureI2C(void);

#endif