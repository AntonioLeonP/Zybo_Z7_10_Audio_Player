// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// fir_io
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of y
//        bit 15~0 - y[15:0] (Read)
//        others   - reserved
// 0x14 : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// 0x18 : Data signal of x
//        bit 15~0 - x[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFIR_FIR_IO_ADDR_AP_CTRL 0x00
#define XFIR_FIR_IO_ADDR_GIE     0x04
#define XFIR_FIR_IO_ADDR_IER     0x08
#define XFIR_FIR_IO_ADDR_ISR     0x0c
#define XFIR_FIR_IO_ADDR_Y_DATA  0x10
#define XFIR_FIR_IO_BITS_Y_DATA  16
#define XFIR_FIR_IO_ADDR_Y_CTRL  0x14
#define XFIR_FIR_IO_ADDR_X_DATA  0x18
#define XFIR_FIR_IO_BITS_X_DATA  16

