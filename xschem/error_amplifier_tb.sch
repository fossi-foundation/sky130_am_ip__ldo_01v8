v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -130 210 -30 {
lab=GND}
N 90 -80 90 -30 {
lab=GND}
N 30 -80 30 -30 {
lab=GND}
N 30 -30 390 -30 {
lab=GND}
N 30 -420 30 -140 {
lab=#net1}
N 680 -410 720 -410 {
lab=out}
N 210 -220 210 -190 {
lab=#net2}
N 390 -30 700 -30 {
lab=GND}
N 700 -290 700 -30 {
lab=GND}
N 700 -410 700 -350 {
lab=out}
N 90 -440 90 -140 {
lab=#net3}
N 90 -440 380 -440 {
lab=#net3}
N 30 -420 380 -420 {
lab=#net1}
N 210 -400 210 -280 {
lab=vdd}
N 210 -400 380 -400 {
lab=vdd}
N 300 -380 380 -380 {
lab=GND}
N 300 -380 300 -30 {
lab=GND}
N 410 -80 410 -30 {
lab=GND}
N 410 -320 510 -320 {
lab=#net4}
N 410 -320 410 -140 {
lab=#net4}
N 505 -160 505 -100 {
lab=#net4}
N 545 -70 545 -30 {
lab=GND}
N 545 -300 545 -190 {
lab=vdd}
N 545 -160 560 -160 {
lab=vdd}
N 560 -205 560 -160 {
lab=vdd}
N 545 -205 560 -205 {
lab=vdd}
N 545 -100 560 -100 {
lab=GND}
N 560 -100 560 -30 {
lab=GND}
N 410 -165 475 -165 {
lab=#net4}
N 475 -165 475 -130 {
lab=#net4}
N 475 -130 505 -130 {
lab=#net4}
N 545 -130 610 -130 {
lab=ena_b}
C {error_amplifier.sym} 530 -410 0 0 {name=x1}
C {devices/vsource.sym} 210 -160 0 0 {name=vdd value=3.3 savecurrent=false
}
C {devices/vsource.sym} 30 -110 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/vsource.sym} 90 -110 0 0 {name=vin value="1.2 ac 1" savecurrent=false}
C {devices/gnd.sym} 390 -30 0 0 {name=l1 lab=GND}
C {devices/code.sym} 900 -430 0 0 {name=s1 only_toplevel=false value="* ngspice control
.param W=100
.option savecurrents
.control
save all
op
write error_amplifier_tb.raw
set appendwrite
* dc vdd 0 3.3 10m
* plot v(out)

tran 100n 200u
plot x1.vbn x1.vcp x1.vbp vdd
plot i(vsupply)

dc vin 0 3.3 10m
plot v(out)

ac dec 10 10 1e9
set units=degrees
plot db(out)
plot ph(out)

.endc
"}
C {sky130_fd_pr/corner.sym} 900 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 750 -430 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
}
C {devices/opin.sym} 720 -410 0 0 {name=p1 lab=out}
C {devices/ammeter.sym} 210 -250 0 0 {name=vsupply savecurrent=true}
C {devices/capa.sym} 700 -320 0 0 {name=C1
m=1
value=1e-13
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 210 -400 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 410 -110 0 0 {name=vena value="pulse(0 3.3 0 1n 1n 15u 30u 10) dc 3.3" savecurrent=false
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 525 -100 0 0 {name=M1
W=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 525 -160 0 0 {name=M2
W=1
L=0.5
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
C {devices/lab_pin.sym} 545 -295 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 510 -340 0 0 {name=p4 sig_type=std_logic lab=ena_b}
C {devices/lab_pin.sym} 610 -130 0 1 {name=p5 sig_type=std_logic lab=ena_b}
