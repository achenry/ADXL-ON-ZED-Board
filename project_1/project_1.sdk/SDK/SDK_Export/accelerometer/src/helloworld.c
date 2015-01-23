/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 */

#include <stdio.h>
#include "platform.h"
#include"xparameters.h"
#include"adxl.h"


void print(char *str);

int main()
{
    init_platform();

    print("Hello World\n\r");
    ADXL_mWriteReg(XPAR_ADXL_0_BASEADDR, ADXL_SLV_REG0_OFFSET, 0x01);
    ADXL_mWriteReg(XPAR_ADXL_0_BASEADDR, ADXL_SLV_REG1_OFFSET, 0x09);
    while(1)
    {
    	//sleep(1);
    	signed char acc=ADXL_mReadReg(XPAR_ADXL_0_BASEADDR, ADXL_SLV_REG2_OFFSET);
    	printf("The acceleration is %d \n",acc);
    }
    cleanup_platform();

    return 0;
}
