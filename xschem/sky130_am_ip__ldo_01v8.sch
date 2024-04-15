v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Low power 1.8 V LDO} 1280 -1410 0 0 0.8 0.8 {}
N 1290 -1210 1330 -1210 {
lab=ena}
N 1630 -1230 1670 -1230 {
lab=avdd}
N 1630 -1210 1670 -1210 {
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
N 1630 -1270 1670 -1270 {
lab=vout}
N 1290 -1250 1330 -1250 {
lab=vref}
N 1290 -1230 1330 -1230 {
lab=sel}
N 1630 -1250 1740 -1250 {
lab=#net3}
N 1740 -1310 1740 -1250 {
lab=#net3}
N 1290 -1310 1740 -1310 {
lab=#net3}
N 1290 -1310 1290 -1270 {
lab=#net3}
N 1290 -1270 1330 -1270 {
lab=#net3}
C {devices/opin.sym} 2540 -1340 0 0 {name=p6 lab=vout}
C {devices/ipin.sym} 2360 -1260 0 0 {name=p1 lab=ena}
C {devices/iopin.sym} 2360 -1220 0 1 {name=p2 lab=avdd}
C {devices/iopin.sym} 2360 -1180 0 1 {name=p3 lab=avss}
C {devices/ipin.sym} 2360 -1340 0 0 {name=p11 lab=vref}
C {devices/ipin.sym} 2360 -1300 0 0 {name=p12 lab=sel}
C {devices/lab_pin.sym} 1670 -1230 0 1 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1670 -1210 0 1 {name=p15 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1290 -1210 0 0 {name=p20 sig_type=std_logic lab=ena}
C {error_amplifier_03v3.sym} 1480 -1240 0 0 {name=x1}
C {devices/lab_pin.sym} 1670 -1270 0 1 {name=p4 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1290 -1250 0 0 {name=p16 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 1290 -1230 0 0 {name=p17 sig_type=std_logic lab=sel}
