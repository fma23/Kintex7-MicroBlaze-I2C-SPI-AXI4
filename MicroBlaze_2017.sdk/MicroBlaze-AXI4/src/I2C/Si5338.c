#include <I2C.h>
#include <stdio.h>
#include "xil_printf.h"
#include "Si5338Reg.h"
#include "Si5338.h"


static void WritePLL_Configuration(const Reg_Data RegData[]);


u8 Read_Si5338(u8 Reg_Addr)
{
	int status;
	unsigned char SentByteCount;

	u8 WriteBuffer[2]={0};
	u8 ReadBuffer[2]={0};

	WriteBuffer[0]=Reg_Addr;
	//status=WriteData(WriteBuffer, 1);
	SentByteCount = XIic_DynSend(XPAR_AXI_IIC_0_BASEADDR, SLAVE_ADDRESS, WriteBuffer, 1, XIIC_STOP);

	//status = ReadData(ReadBuffer, 1);

	return ReadBuffer[0];
}


int Write_Si5338(u8 Reg_Addr,u8 Data)
{
	int status;
	unsigned char SentByteCount;


	u8 WriteBuffer[2]={0};

	WriteBuffer[0]=Reg_Addr;
	WriteBuffer[1]=Data;

	SentByteCount = XIic_DynSend(XPAR_AXI_IIC_0_BASEADDR, SLAVE_ADDRESS, WriteBuffer, 2, XIIC_STOP);
	//status=WriteData(WriteBuffer, 2);
	if (status != XST_SUCCESS)
	{
	   xil_printf("failed to read register %d \n", Reg_Addr);
	}

	return status;
}


int Configure_Si5338(void)
{
   int status;
   u8 RegAddr= 0;
   u8 ReadValue= 0;
   u8 Data =0;
   u8 mask;
   u8 clear_curr_val;
   u8 clear_new_val;
   u8 combined;


   /* Disable OutputsSet OEB_ALL = 1; reg230[4] */
   RegAddr=230;
   Data = 0x10;
   status=Write_Si5338(RegAddr,Data);

   /* Pause LOLSet DIS_LOL = 1; reg241[7} */
   RegAddr=241;
   Data = 0xE5;
   status=Write_Si5338(RegAddr,Data);

   /*Write new configuration to device accounting for the write-allowed mask */
   WritePLL_Configuration(RegData);


   /* Is clock valid: Input clocks are validated with the LOS alarms.
    * See Register 218 to determine which LOS should be monitored */
   RegAddr = 218;
   ReadValue = Read_Si5338(RegAddr);
   if(ReadValue!=0)
   {
	   xil_printf("clock is not valid; register %d reads %d\n", RegAddr,ReadValue);
       return -1;
   }

   /*Configure PLL for lockingSet FCAL_OVRD_EN = 0; reg49[7] */
   RegAddr = 49;
   ReadValue = Read_Si5338(RegAddr);
   if (ReadValue & (1 << 7))  /* if bit 7 is set */
   {
	   ReadValue &= ~(1 << 7);  /*clear bit 7 */
	   status=Write_Si5338(RegAddr,ReadValue);
   }

   /*Initiate Locking of PLLSet SOFT_RESET = 1; reg246[1]
    write reg246=0x02
    */
   RegAddr = 246;
   Data = 0x02;
   status=Write_Si5338(RegAddr,Data);


   usleep(250000);
   //sleep(1);

  /* Restart LOLSet DIS_LOL = 0; reg241[7]Set reg 241 = 0x65 */
   RegAddr = 241;
   Data = 0x65;
   status=Write_Si5338(RegAddr,Data);


   /* Is PLL locked; read reg 218; all alarms should be clear */
   RegAddr = 218;
   ReadValue = Read_Si5338(RegAddr);
   if(ReadValue!=0)
   {
  	  xil_printf("clock is not locked; register %d reads %d\n", RegAddr,ReadValue);
     // return -1;
   }

   /*Copy registers as follows:237[1:0] to 47[1:0] */

   RegAddr = 237;
   ReadValue = Read_Si5338(RegAddr);

   RegAddr = 47;
   Data = Read_Si5338(RegAddr);

   mask = 0x03;

   clear_curr_val = Data & (~ mask);
   clear_new_val = ReadValue & mask;

   combined = clear_curr_val || clear_new_val;

   Write_Si5338(RegAddr, combined);

   /*Copy registers as follows:236[7:0] to 46[7:0] */
   RegAddr = 236;
   ReadValue = Read_Si5338(RegAddr);
   RegAddr = 46;
   status=Write_Si5338(RegAddr,ReadValue);


   /*Copy registers as follows:235[7:0] to 45[7:0] */
   RegAddr = 235;
   ReadValue = Read_Si5338(RegAddr);
   RegAddr = 45;
   status=Write_Si5338(RegAddr,ReadValue);

   /*Set 47[7:2] = 000101b  */
   RegAddr = 47;
   Data=0x0E;
   status=Write_Si5338(RegAddr,Data);


   /*Set PLL to use FCAL valuesSet FCAL_OVRD_EN = 1; reg49[7] */
   RegAddr = 49;
   Data=0x80;
   status=Write_Si5338(RegAddr,Data);

   /*Enable Outputs  */
   RegAddr = 230;
   Data=0;
   status=Write_Si5338(RegAddr,Data);

   return status;

}

void WritePLL_Configuration(const Reg_Data RegData[])
{

	u8 curr_val=0;
	u8 clear_curr_val=0;
	u8 clear_new_val=0;
	u8 combined=0;

	/* ignore registers with masks of 0x00 */
	for (int i=0; i<NUM_REGS_MAX;i++)
	{
		if(RegData[i].Reg_Mask != 0x00)
		{
			if(RegData[i].Reg_Mask == 0xFF)
			{
			 /* do a regular I2C write to the register
			 at addr with the desired data value */
			 Write_Si5338(RegData[i].Reg_Addr, RegData[i].Reg_Val);
			}
			else
			{
			 /* do a read-modify-write using I2C and bit-wise operations
				get the current value from the device at the register located at addr */
			curr_val = Read_Si5338(RegData[i].Reg_Addr);

			/* clear the bits that are allowed to be
			   accessed in the current value of the register*/
			clear_curr_val = curr_val & (~ RegData[i].Reg_Mask);

			/* clear the bits in the desired data that are not allowed to be accessed*/
			clear_new_val = RegData[i].Reg_Val & RegData[i].Reg_Mask; // data & mask;

			/*combine the cleared values to get the new
			  value to write to the desired register*/
			combined = clear_curr_val || clear_new_val;

		    Write_Si5338(RegData[i].Reg_Addr, combined);

		   }
		}
	}
}

