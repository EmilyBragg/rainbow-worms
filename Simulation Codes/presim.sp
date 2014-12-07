

.subckt AOI21 IN1 IN2 VDD! IN3 GND! OUT
M4 (OUT IN3 net13 VDD!) PMOS_VTL w=480n l=50n
M1 (net13 IN2 VDD! VDD!) PMOS_VTL w=480n l=50n
M3 (net13 IN1 VDD! VDD!) PMOS_VTL w=480n l=50n
M5 (OUT IN3 0 0) NMOS_VTL w=120n l=50n
M2 (net21 IN2 0 0) NMOS_VTL w=240n l=50n
M0 (OUT IN1 net21 0) NMOS_VTL w=240n l=50n
.ends

.subckt AOI22 IN1 IN2 VDD! IN3 IN4 OUT GND!
M11 (OUT IN4 net13 VDD!) PMOS_VTL w=480n l=50n
M10 (OUT IN3 net13 VDD!) PMOS_VTL w=480n l=50n
M9 (net13 IN2 VDD! VDD!) PMOS_VTL w=480n l=50n
M7 (net13 IN1 VDD! VDD!) PMOS_VTL w=480n l=50n
M14 (net22 IN2 0 0) NMOS_VTL w=240n l=50n
M13 (net26 IN4 0 0) NMOS_VTL w=240n l=50n
M12 (OUT IN3 net26 0) NMOS_VTL w=240n l=50n
M8 (OUT IN1 net22 0) NMOS_VTL w=240n l=50n
.ends

.subckt NAND2 IN1 GND! VDD! IN2 OUT
M2 (net1 IN2 0 0) NMOS_VTL w=240n l=50n
M0 (OUT IN1 net1 0) NMOS_VTL w=240n l=50n
M3 (OUT IN1 VDD! VDD!) PMOS_VTL w=240n l=50n
M1 (OUT IN2 VDD! VDD!) PMOS_VTL w=240n l=50n
.ends

.subckt NAND3 IN1 GND! IN2 IN3 VDD! OUT
M4 (OUT IN3 VDD! VDD!) PMOS_VTL w=240n l=50n
M1 (OUT IN2 VDD! VDD!) PMOS_VTL w=240n l=50n
M3 (OUT IN1 VDD! VDD!) PMOS_VTL w=240n l=50n
M5 (net17 IN3 0 0) NMOS_VTL w=360n l=50n
M0 (OUT IN1 net044 0) NMOS_VTL w=360n l=50n
M2 (net044 IN2 net17 0) NMOS_VTL w=360n l=50n
.ends

.subckt NAND4 IN1 GND! IN2 IN3 VDD! IN4 OUT
M7 (net6 IN4 0 0) NMOS_VTL w=480n l=50n
M2 (net10 IN2 net18 0) NMOS_VTL w=480n l=50n
M0 (OUT IN1 net10 0) NMOS_VTL w=480n l=50n
M5 (net18 IN3 net6 0) NMOS_VTL w=480n l=50n
M6 (OUT IN4 VDD! VDD!) PMOS_VTL w=240n l=50n
M3 (OUT IN1 VDD! VDD!) PMOS_VTL w=240n l=50n
M1 (OUT IN2 VDD! VDD!) PMOS_VTL w=240n l=50n
M4 (OUT IN3 VDD! VDD!) PMOS_VTL w=240n l=50n
.ends

.subckt NOR2 IN1 VDD! GND! IN2 OUT
M1 (OUT IN2 net7 VDD!) PMOS_VTL w=480n l=50n
M3 (net7 IN1 VDD! VDD!) PMOS_VTL w=480n l=50n
M0 (OUT IN1 0 0) NMOS_VTL w=120n l=50n
M2 (OUT IN2 0 0) NMOS_VTL w=120n l=50n
.ends

.subckt NOR3 IN1 VDD! IN2 IN3 OUT GND!
M5 (net12 IN3 VDD! VDD!) PMOS_VTL w=720n l=50n
M3 (net16 IN1 net12 VDD!) PMOS_VTL w=720n l=50n
M1 (OUT IN2 net16 VDD!) PMOS_VTL w=720n l=50n
M4 (OUT IN3 0 0) NMOS_VTL w=120n l=50n
M0 (OUT IN1 0 0) NMOS_VTL w=120n l=50n
M2 (OUT IN2 0 0) NMOS_VTL w=120n l=50n
.ends

.subckt NOR4 IN1 VDD! IN2 IN3 GND! IN4 OUT
M6 (net21 IN4 VDD! VDD!) PMOS_VTL w=960n l=50n
M1 (OUT IN2 net13 VDD!) PMOS_VTL w=960n l=50n
M3 (net13 IN1 net17 VDD!) PMOS_VTL w=960n l=50n
M5 (net17 IN3 net21 VDD!) PMOS_VTL w=960n l=50n
M7 (OUT IN4 0 0) NMOS_VTL w=120n l=50n
M2 (OUT IN2 0 0) NMOS_VTL w=120n l=50n
M0 (OUT IN1 0 0) NMOS_VTL w=120n l=50n
M4 (OUT IN3 0 0) NMOS_VTL w=120n l=50n
.ends

.subckt OAI21 IN1 IN2 GND! IN3 OUT VDD!
M9 (net33 IN1 0 0) NMOS_VTL w=240n l=50n
M7 (OUT IN3 net33 0) NMOS_VTL w=240n l=50n
M6 (net33 IN2 0 0) NMOS_VTL w=240n l=50n
M11 (OUT IN2 net40 VDD!) PMOS_VTL w=480n l=50n
M10 (net40 IN1 VDD! VDD!) PMOS_VTL w=480n l=50n
M8 (OUT IN3 VDD! VDD!) PMOS_VTL w=240n l=50n
.ends

.subckt OAI22 IN1 IN2 GND! IN3 IN4 OUT VDD!
M0 (OUT IN4 net9 VDD!) PMOS_VTL w=480n l=50n
M8 (net9 IN3 VDD! VDD!) PMOS_VTL w=480n l=50n
M10 (net21 IN1 VDD! VDD!) PMOS_VTL w=480n l=50n
M11 (OUT IN2 net21 VDD!) PMOS_VTL w=480n l=50n
M1 (OUT IN4 net26 0) NMOS_VTL w=240n l=50n
M6 (net26 IN2 0 0) NMOS_VTL w=240n l=50n
M7 (OUT IN3 net26 0) NMOS_VTL w=240n l=50n
M9 (net26 IN1 0 0) NMOS_VTL w=240n l=50n
.ends