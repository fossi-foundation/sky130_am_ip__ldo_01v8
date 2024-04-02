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
N 30 -410 30 -140 {
lab=#net1}
N 680 -410 720 -410 {
lab=out}
N 210 -220 210 -190 {
lab=#net2}
N 700 -290 700 -30 {
lab=GND}
N 700 -410 700 -350 {
lab=out}
N 90 -430 90 -140 {
lab=#net3}
N 90 -430 380 -430 {
lab=#net3}
N 30 -410 380 -410 {
lab=#net1}
N 210 -340 210 -280 {
lab=vdd}
N 210 -340 380 -340 {
lab=vdd}
N 410 -80 410 -30 {
lab=GND}
N 410 -390 410 -140 {
lab=#net4}
N 390 -30 700 -30 {
lab=GND}
N 410 -390 540 -390 {
lab=#net4}
N 380 -340 590 -340 {
lab=vdd}
N 560 -320 590 -320 {
lab=GND}
N 560 -320 560 -30 {
lab=GND}
N 560 -280 590 -280 {
lab=GND}
N 380 -410 540 -410 {
lab=#net1}
N 380 -430 540 -430 {
lab=#net3}
N 320 -130 320 -30 {
lab=GND}
N 320 -300 320 -190 {
lab=#net5}
N 320 -300 590 -300 {
lab=#net5}
C {error_amplifier.sym} 610 -410 0 0 {name=x1}
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
C {devices/lab_pin.sym} 210 -340 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 410 -110 0 0 {name=vena value="pulse(0 3.3 0 1n 1n 15u 30u 10) dc 3.3" savecurrent=false
}
C {devices/vsource.sym} 320 -160 0 0 {name=vdd1 value=1.8 savecurrent=false
}
