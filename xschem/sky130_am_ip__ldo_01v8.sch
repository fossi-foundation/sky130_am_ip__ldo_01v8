v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Regulator} 1710 -1630 0 0 0.5 0.5 {}
T {Low power 1.8 V LDO} 1240 -1750 0 0 0.8 0.8 {}
T {internal 1.2 V reference} 1030 -1630 0 0 0.5 0.5 {}
N 1950 -1040 1950 -1000 {
lab=avss}
N 1950 -1140 1950 -1100 {
lab=v_m}
N 1950 -1240 1950 -1200 {
lab=out}
N 1950 -1270 1990 -1270 {
lab=avss}
N 1990 -1270 1990 -1000 {
lab=avss}
N 1950 -1000 1990 -1000 {
lab=avss}
N 1950 -1560 1950 -1300 {
lab=avdd}
N 1950 -1220 2050 -1220 {
lab=out}
N 1120 -1560 1270 -1560 {
lab=avdd}
N 1120 -1000 1270 -1000 {
lab=avss}
N 1970 -1170 1990 -1170 {
lab=avss}
N 1970 -1070 1990 -1070 {
lab=avss}
N 1620 -1000 1950 -1000 {
lab=avss}
N 1620 -1560 1950 -1560 {
lab=avdd}
N 1120 -1350 1160 -1350 {
lab=vi}
N 1120 -1350 1120 -1170 {
lab=vi}
N 1120 -1170 1160 -1170 {
lab=vi}
N 1200 -1140 1200 -1000 {
lab=avss}
N 1200 -1320 1200 -1200 {
lab=vi}
N 1200 -1560 1200 -1380 {
lab=avdd}
N 1200 -1350 1220 -1350 {
lab=avdd}
N 1220 -1560 1220 -1350 {
lab=avdd}
N 1200 -1170 1220 -1170 {
lab=avss}
N 1220 -1170 1220 -1000 {
lab=avss}
N 1120 -1260 1200 -1260 {
lab=vi}
N 1780 -1270 1910 -1270 {
lab=v_ea}
N 1590 -1270 1640 -1270 {
lab=ref}
N 1620 -1290 1640 -1290 {
lab=v_m}
N 1620 -1290 1620 -1120 {
lab=v_m}
N 1620 -1120 1950 -1120 {
lab=v_m}
N 1590 -1200 1690 -1200 {
lab=avdd}
N 1590 -1180 1690 -1180 {
lab=avss}
N 1590 -1160 1690 -1160 {
lab=dvdd}
N 1590 -1140 1690 -1140 {
lab=dvss}
N 1590 -1250 1640 -1250 {
lab=ena}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1930 -1270 0 0 {name=M11
W=200
L=1
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
C {devices/lab_pin.sym} 1950 -1120 0 1 {name=p4 sig_type=std_logic lab=v_m}
C {devices/opin.sym} 2050 -1220 0 0 {name=p6 lab=out}
C {devices/lab_pin.sym} 1120 -1560 0 0 {name=p35 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1120 -1000 0 0 {name=p36 sig_type=std_logic lab=avss}
C {sky130_fd_pr/res_high_po_0p35.sym} 1950 -1170 0 1 {name=R1
L=1000
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1950 -1070 0 1 {name=R2
L=2000
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/iopin.sym} 1590 -1160 0 1 {name=p39 lab=dvdd}
C {devices/iopin.sym} 1590 -1140 0 1 {name=p42 lab=dvss}
C {devices/lab_pin.sym} 1840 -1270 3 0 {name=p8 sig_type=std_logic lab=v_ea}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1180 -1350 0 0 {name=M10
W=1
L=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1180 -1170 0 0 {name=M16
W=2.5
L=20
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
C {devices/lab_pin.sym} 1200 -1260 0 1 {name=p14 sig_type=std_logic lab=vi}
C {error_amplifier.sym} 1710 -1270 0 0 {name=x1}
C {devices/ipin.sym} 1590 -1270 0 0 {name=p10 lab=ref}
C {devices/ipin.sym} 1590 -1250 0 0 {name=p1 lab=ena}
C {devices/iopin.sym} 1590 -1200 0 1 {name=p2 lab=avdd}
C {devices/iopin.sym} 1590 -1180 0 1 {name=p3 lab=avss}
C {devices/lab_pin.sym} 1620 -1000 0 0 {name=p5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1620 -1560 0 0 {name=p7 sig_type=std_logic lab=avdd}
