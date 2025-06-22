#include "xscugic.h"
#include "xil_types.h"
#include "xil_exception.h"
#include "xscutimer.h"

void initGIC();
void GICConnectTimer(u32 Int_Id, Xil_InterruptHandler Handler);
void GICEnable(u32 Int_Id);
void ExceptionInit();
void ExceptionRegisterHandler();
void ExceptionEnable();
void clearCallback();
