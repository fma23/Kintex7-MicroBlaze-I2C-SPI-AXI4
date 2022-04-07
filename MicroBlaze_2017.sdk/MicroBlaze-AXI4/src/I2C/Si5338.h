#ifndef __Si5338_H_
#define __Si5338_H_


#define SLAVE_ADDRESS	0x70	/* 0xE0 as an 8 bit number. */


int Write_Si5338(u8 Reg_Addr,u8 Data);
u8 Read_Si5338(u8 Reg_Addr);
int Configure_Si5338(void);


#endif
