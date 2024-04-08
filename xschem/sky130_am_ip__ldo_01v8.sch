v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Regulator} 1710 -1630 0 0 0.5 0.5 {}
T {Low power 1.8 V LDO} 1240 -1750 0 0 0.8 0.8 {}
N 1950 -1040 1950 -1000 {
lab=avss}
N 1950 -1140 1950 -1100 {
lab=ctrl}
N 1950 -1240 1950 -1200 {
lab=vout}
N 1950 -1270 1990 -1270 {
lab=avss}
N 1990 -1270 1990 -1000 {
lab=avss}
N 1950 -1000 1990 -1000 {
lab=avss}
N 1970 -1170 1990 -1170 {
lab=avss}
N 1970 -1070 1990 -1070 {
lab=avss}
N 1680 -1270 1910 -1270 {
lab=ea_out}
N 1360 -1120 1950 -1120 {
lab=ctrl}
N 1360 -1270 1360 -1120 {
lab=ctrl}
N 1360 -1270 1380 -1270 {
lab=ctrl}
N 1060 -1290 1380 -1290 {
lab=ref}
N 1680 -1290 1700 -1290 {
lab=ref_int}
N 1700 -1340 1700 -1290 {
lab=ref_int}
N 740 -1340 1700 -1340 {
lab=ref_int}
N 740 -1340 740 -1290 {
lab=ref_int}
N 740 -1290 760 -1290 {
lab=ref_int}
N 700 -1270 760 -1270 {
lab=vref}
N 700 -1250 760 -1250 {
lab=sel}
N 1320 -1250 1380 -1250 {
lab=ena}
N 1680 -1250 1740 -1250 {
lab=dvdd}
N 1680 -1230 1740 -1230 {
lab=dvss}
N 1680 -1210 1740 -1210 {
lab=avdd}
N 1680 -1190 1740 -1190 {
lab=avss}
N 1060 -1270 1120 -1270 {
lab=dvdd}
N 1060 -1250 1120 -1250 {
lab=dvss}
N 1060 -1230 1120 -1230 {
lab=avdd}
N 1060 -1210 1120 -1210 {
lab=avss}
N 1950 -1340 1950 -1300 {
lab=avdd}
N 1950 -1220 2050 -1220 {
lab=vout}
N 2360 -1200 2420 -1200 {
lab=dvdd}
N 2360 -1160 2420 -1160 {
lab=dvss}
N 2360 -1120 2420 -1120 {
lab=avdd}
N 2360 -1080 2420 -1080 {
lab=avss}
N 2360 -1340 2420 -1340 {
lab=vref}
N 2360 -1300 2420 -1300 {
lab=sel}
N 2360 -1260 2420 -1260 {
lab=ena}
N 2480 -1340 2540 -1340 {
lab=vout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1930 -1270 0 0 {name=M11
W=200
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1670 -1120 1 1 {name=p4 sig_type=std_logic lab=ctrl}
C {devices/opin.sym} 2540 -1340 0 0 {name=p6 lab=vout}
C {devices/iopin.sym} 2360 -1200 0 1 {name=p39 lab=dvdd}
C {devices/iopin.sym} 2360 -1160 0 1 {name=p42 lab=dvss}
C {devices/lab_pin.sym} 1870 -1270 3 0 {name=p8 sig_type=std_logic lab=ea_out}
C {devices/ipin.sym} 2360 -1260 0 0 {name=p1 lab=ena}
C {devices/iopin.sym} 2360 -1120 0 1 {name=p2 lab=avdd}
C {devices/iopin.sym} 2360 -1080 0 1 {name=p3 lab=avss}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1950 -1170 0 1 {name=R1
L=180
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1950 -1070 0 1 {name=R2
L=360
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 2360 -1340 0 0 {name=p11 lab=vref}
C {devices/ipin.sym} 2360 -1300 0 0 {name=p12 lab=sel}
C {devices/lab_pin.sym} 2050 -1220 0 1 {name=p5 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1740 -1250 0 1 {name=p7 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1740 -1230 0 1 {name=p9 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1740 -1210 0 1 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1740 -1190 0 1 {name=p15 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1120 -1270 0 1 {name=p16 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1120 -1250 0 1 {name=p17 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1120 -1230 0 1 {name=p18 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1120 -1210 0 1 {name=p19 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1320 -1250 0 0 {name=p20 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 700 -1250 0 0 {name=p21 sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 700 -1270 0 0 {name=p22 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 1950 -1340 0 0 {name=p23 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1950 -1000 0 0 {name=p24 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1230 -1290 3 0 {name=p25 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 1700 -1290 0 1 {name=p26 sig_type=std_logic lab=ref_int}
C {error_amplifier_03v3.sym} 1530 -1240 0 0 {name=x1}
C {mux21_03v3.sym} 910 -1250 0 0 {name=x2}
