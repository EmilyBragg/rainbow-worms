***********************************
* Post Layout simulation
* EE 382M-VLSI I
************************************

.options CONVERGE=1 GMINDC=1.0000E-12 accurate list node 

*************************************
* Models for 45nm
*************************************

.inc '$PDK_DIR/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTL.inc'
.inc '$PDK_DIR/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTL.inc'

*************************************
* Circuit Include
*************************************
.include "presim.sp"
*.include "NAND2.pex.netlist"
*.include "NAND3.pex.netlist"
*.include "NAND4.pex.netlist"
*.include "NOR2.pex.netlist"
*.include "NOR3.pex.netlist"
*.include "NOR4.pex.netlist"
*.include "AOI21.pex.netlist"
*.include "AOI22.pex.netlist"
*.include "OAI21.pex.netlist"
*.include "OAI22.pex.netlist"

*.include "NAND2_3D.pex.netlist"
*.include "NAND3_3D.pex.netlist"
*.include "NAND4_3D.pex.netlist"
*.include "NOR2_3D.pex.netlist"
*.include "NOR3_3D.pex.netlist"
*.include "NOR4_3D.pex.netlist"
*.include "AOI21_3D.pex.netlist"
*.include "AOI22_3D.pex.netlist"
*.include "OAI21_3D.pex.netlist"
*.include "OAI22_3D.pex.netlist"
*************************************

.global

***********change the slew**********
.param risefall = 50p
************************************

**********change the cap************
*capout OUT 0 50fF
capout OUT 0 50.123fF
************************************

*********Pin Specification********** 
** Pin orders should be matched with 'XXX.pex.netlist' ****
*x1 IN VDD! GND! OUT inverter
*X1 IN1 GND! VDD! IN2 OUT NAND2
*X1 IN1 GND! IN2 IN3 VDD! OUT NAND3 
*X1 IN1 GND! IN2 IN3 VDD! IN4 OUT NAND4 
*x1 IN1 VDD! GND! IN2 OUT NOR2 
*x1 IN1 VDD! IN2 IN3 OUT GND! NOR3 
*x1 IN1 VDD! IN2 IN3 GND! IN4 OUT NOR4
*x1 IN1 IN2 VDD! IN3 GND! OUT AOI21
*x1 IN1 IN2 VDD! IN3 IN4 OUT GND! AOI22
*x1 IN1 IN2 GND! IN3 OUT VDD! OAI21
x1  IN1 IN2 GND! IN3 IN4 OUT VDD! OAI22

*x1 GND! IN1 VDD! OUT IN2 NAND2_3D
*x1 IN1 GND! IN2 IN3 VDD! OUT NAND3_3D
*X1 IN1 GND! IN2 IN3 VDD! IN4 OUT NAND4_3D
*x1 IN1 VDD! GND! IN2 OUT NOR2_3D
*x1 IN1 VDD! IN2 OUT IN3 GND! NOR3_3D 
*x1 IN1 VDD! IN2 IN3 GND! IN4 OUT NOR4_3D
*x1 IN1 IN2 VDD! IN3 GND! OUT AOI21_3D
*x1 IN1 VDD! IN2 IN3 IN4 OUT GND! AOI22_3D
*x1 IN1 GND! IN2 OUT VDD! IN3 OAI21_3D
*x1  IN1 GND! IN2 IN3 IN4 OUT VDD! OAI22_3D
************************************

VGND GND! 0 0
VVDD VDD! 0 1

.TEMP 25
***NAND and NAND_3D*********
*VIN1 IN1 0 pwl (0 0 100p 0 '100p+risefall' 1)
*VIN2 IN2 0 1
*VIN3 IN3 0 1
*VIN4 IN4 0 1
***NOR*********
*VIN1 IN1 0 pwl (0 1 100p 1 '100p+risefall' 0)
*VIN2 IN2 0 0
*VIN3 IN3 0 0
*VIN4 IN4 0 0
***AOI*********
*VIN1 IN1 0 pwl (0 0 100p 0 '100p+risefall' 1)
*VIN2 IN2 0 1
*VIN3 IN3 0 0
*VIN4 IN4 0 0
***OAI*********
VIN1 IN1 0 pwl (0 1 100p 1 '100p+risefall' 0)
VIN2 IN2 0 0
VIN3 IN3 0 1
VIN4 IN4 0 1
******** Adjust stop time for the simulation to get the waveform you want *************
.tran 10p 2n
************************************



.op
.option post

.END
