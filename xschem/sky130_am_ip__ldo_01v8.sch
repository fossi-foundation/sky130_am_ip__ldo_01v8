v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Regulator} 1710 -1630 0 0 0.5 0.5 {}
T {Low power 1.8 V LDO} 1240 -1750 0 0 0.8 0.8 {}
N 1000 -1230 1060 -1230 {
lab=ena}
N 1360 -1210 1400 -1210 {
lab=avdd}
N 1360 -1190 1400 -1190 {
lab=avss}
N 2360 -1220 2420 -1220 {
lab=avdd}
N 2360 -1180 2420 -1180 {
lab=avss}
N 2360 -1340 2420 -1340 {
lab=vref}
N 2360 -1300 2420 -1300 {
lab=sel}
N 2360 -1260 2420 -1260 {
lab=ena}
N 2480 -1340 2540 -1340 {
lab=vout}
N 1360 -1270 1400 -1270 {
lab=vout}
N 1920 -1250 1960 -1250 {
lab=avdd}
N 1920 -1230 1960 -1230 {
lab=avss}
N 1360 -1250 1620 -1250 {
lab=#net3}
N 1580 -1270 1620 -1270 {
lab=vref}
N 1580 -1230 1620 -1230 {
lab=sel}
N 1360 -1230 1470 -1230 {}
N 1470 -1230 1470 -1150 {}
N 1040 -1150 1470 -1150 {}
N 1040 -1250 1040 -1150 {}
N 1040 -1250 1060 -1250 {}
N 1920 -1270 1960 -1270 {}
N 1960 -1320 1960 -1270 {}
N 1040 -1320 1960 -1320 {}
N 1040 -1320 1040 -1270 {}
N 1040 -1270 1060 -1270 {}
C {devices/opin.sym} 2540 -1340 0 0 {name=p6 lab=vout}
C {devices/ipin.sym} 2360 -1260 0 0 {name=p1 lab=ena}
C {devices/iopin.sym} 2360 -1220 0 1 {name=p2 lab=avdd}
C {devices/iopin.sym} 2360 -1180 0 1 {name=p3 lab=avss}
C {devices/ipin.sym} 2360 -1340 0 0 {name=p11 lab=vref}
C {devices/ipin.sym} 2360 -1300 0 0 {name=p12 lab=sel}
C {devices/lab_pin.sym} 1400 -1210 0 1 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1400 -1190 0 1 {name=p15 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1000 -1230 0 0 {name=p20 sig_type=std_logic lab=ena}
C {error_amplifier_03v3.sym} 1210 -1230 0 0 {name=x1}
C {mux21_03v3.sym} 1770 -1250 0 0 {name=x2}
C {devices/lab_pin.sym} 1400 -1270 0 1 {name=p4 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1960 -1250 0 1 {name=p5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1960 -1230 0 1 {name=p8 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1580 -1270 0 0 {name=p16 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 1580 -1230 0 0 {name=p17 sig_type=std_logic lab=sel}
