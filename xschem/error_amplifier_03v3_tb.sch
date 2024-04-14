v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -400 560 -400 {
lab=ena}
N 860 -360 880 -360 {
lab=GND}
N 880 -360 880 -60 {
lab=GND}
N 400 -440 400 -160 {
lab=#net1}
N 400 -440 560 -440 {
lab=#net1}
N 320 -420 320 -160 {
lab=#net2}
N 320 -420 560 -420 {
lab=#net2}
N 320 -60 1020 -60 {
lab=GND}
N 320 -100 320 -60 {
lab=GND}
N 400 -100 400 -60 {
lab=GND}
N 1020 -60 1400 -60 {
lab=GND}
N 1160 -160 1160 -120 {
lab=#net3}
N 1160 -260 1160 -220 {
lab=avdd}
N 1400 -260 1400 -120 {
lab=ena}
N 860 -380 920 -380 {
lab=avdd}
N 860 -400 920 -400 {
lab=vctrl}
N 860 -440 920 -440 {
lab=vout}
N 860 -420 920 -420 {
lab=vref}
N 920 -440 1040 -440 {
lab=vout}
N 1040 -440 1040 -240 {
lab=vout}
N 1040 -180 1040 -60 {
lab=GND}
C {devices/vsource.sym} 1160 -90 0 0 {name=vdd value=3.0 savecurrent=false
}
C {devices/gnd.sym} 700 -60 0 0 {name=l1 lab=GND}
C {devices/code.sym} 40 -430 0 0 {name=s1 only_toplevel=false value="* ngspice control
.param W=100
.option savecurrents
.control
save all
save @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm28.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm28.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm30.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm30.msky130_fd_pr__nfet_g5v0d10v5[gds]
save @m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[gds]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gds]

save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gmbs]
save @m.x1.xm39.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm8.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm38.msky130_fd_pr__nfet_g5v0d10v5[gds]
op
write error_amplifier_03v3_tb.raw
set appendwrite

let av28 = @m.x1.xm28.msky130_fd_pr__pfet_g5v0d10v5[gm] / @m.x1.xm28.msky130_fd_pr__pfet_g5v0d10v5[gds]
let av30 = @m.x1.xm30.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.x1.xm30.msky130_fd_pr__nfet_g5v0d10v5[gds]

echo pfet
print @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[gds]
print @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gds]
print av28

echo nfet
print @m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[gds]
print av30

echo 'super source follower'
print @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gm]
print @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gds]
print @m.x1.xm9.msky130_fd_pr__pfet_g5v0d10v5[gmbs]
print @m.x1.xm39.msky130_fd_pr__nfet_g5v0d10v5[gm]
print @m.x1.xm8.msky130_fd_pr__pfet_g5v0d10v5[gds]
print @m.x1.xm38.msky130_fd_pr__nfet_g5v0d10v5[gds]

optran 0 0 0 300n 6u 0
* optran 1 1 1 0 0 0

ac dec 10 10 10e6
set units=degrees
plot db(vctrl)
plot ph(vctrl)

let gain = db(vctrl)
let ph = ph(vctrl)
meas ac p1 when ph = -45
meas ac p2 when ph = -135
meas ac s_gain find gain at=10
meas ac ph_margin find ph when gain = 1
print ph_margin + 180

dc vin 1.18 1.21 100u
plot vout

* tran 10n 10u
* plot vout vctrl x1.vbp x1.vcp x1.vcn x1.vbn
.endc
"}
C {sky130_fd_pr/corner.sym} 40 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 130 -100 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
}
C {devices/ammeter.sym} 1160 -190 0 0 {name=vsupply savecurrent=true}
C {devices/vsource.sym} 1400 -90 0 0 {name=vena value=3.3 savecurrent=false
}
C {error_amplifier_03v3.sym} 710 -400 0 0 {name=x1}
C {devices/lab_pin.sym} 500 -400 0 0 {name=p5 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 320 -130 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/vsource.sym} 400 -130 0 0 {name=vin value="1.2 ac 1" savecurrent=false}
C {devices/lab_pin.sym} 1160 -260 0 1 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 920 -380 0 1 {name=p7 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1400 -260 0 1 {name=p8 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 920 -400 0 1 {name=p1 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 920 -440 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 920 -420 0 1 {name=p3 sig_type=std_logic lab=vref}
C {devices/res.sym} 1040 -210 0 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
