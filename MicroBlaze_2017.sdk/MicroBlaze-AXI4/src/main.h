/*
 * main.h
 *
 *  Created on: Mar 23, 2022
 *      Author: fmabrouk
 */

#ifndef MAIN_H_
#define MAIN_H_



#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"	/* XPAR parameters */
#include "xspi.h"
#include "sleep.h"




#define BUFFER_SIZE		    36
u32 ReadBuff[BUFFER_SIZE];
u32 WriteBuff[BUFFER_SIZE]=
{
0x0000001F,
0x0000001F,
0x00020000,
0x00000000,
0x00000120,
0x00000061,
0x00000062,
0x00000123,
0x00000184,
0x00000185,
0x33010006,
0x11330007,
0x10100008,
0x55555549,
0x91E0410A,
0x000C300B,
0x130C01AC,
0x2300266D,
0x0000000E,
0x8000800F,
0xC1550410,
0x00000011,
0x00000012,
0x00000013,
0x00000014,
0x00000015,
0x00000016,
0x00000017,
0x00000018,
0x02000019,
0xAFA8001A,
0x1C00005B,
0x00A0021C,
0x0100EA1D,
0x0100EA1E,
0x001F001F
};



















#endif /* MAIN_H_ */