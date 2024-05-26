v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 590 -430 750 -430 {
lab=vout}
N 750 -430 750 -180 {
lab=vout}
N 750 -120 750 -60 {
lab=GND}
N 170 -370 170 -160 {
lab=#net1}
N 170 -370 290 -370 {
lab=#net1}
N 170 -60 750 -60 {
lab=GND}
N 170 -100 170 -60 {
lab=GND}
N -40 -100 -40 -60 {
lab=GND}
N 270 -410 290 -410 {
lab=GND}
N 270 -410 270 -60 {
lab=GND}
N -180 -100 -180 -60 {
lab=GND}
N -180 -430 290 -430 {
lab=#net2}
N -180 -430 -180 -160 {
lab=#net2}
N -40 -390 -40 -160 {
lab=#net3}
N -40 -390 290 -390 {
lab=#net3}
N 60 -350 290 -350 {
lab=#net4}
N 60 -350 60 -160 {
lab=#net4}
N 60 -100 60 -60 {
lab=GND}
N -180 -60 170 -60 {
lab=GND}
C {devices/code.sym} 995 -170 0 0 {name=TRAN_SIM only_toplevel=false value=".option savecurrents
.param AVDD = 3.0
.control
save all

tran 100n 100u
meas tran vout_op find vout at=100u
.endc
"}
C {sky130_fd_pr/corner.sym} 880 -170 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 950 -260 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
value=".option savecurrents
.control
save all
save x1.vcp
save x1.vbp
save x1.vcn
save x1.vbn
save x1.v_m
save x1.v_p
save x1.v_ea
op
write sky130_am_ip__ldo_01v8_tb.raw
set appendwrite
* ac dec 10 10 1e9
* set units=degrees
* plot db(vout)
* plot ph(vout)
dc vavdd 0 3.3 10m
plot vout
* plot x1.vcp x1.vbp x1.vcn x1.vbn
*plot x1.v_m x1.v_p x1.v_ea
*plot @m.x1.xm22.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm26.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm27.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[id] @m.x1.xm33.msky130_fd_pr__nfet_g5v0d10v5[id]
*plot @m.x1.xm39.msky130_fd_pr__nfet_g5v0d10v5[id]
.endc
"}
C {sky130_am_ip__ldo_01v8.sym} 440 -390 0 0 {name=x1}
C {devices/res.sym} 750 -150 0 0 {name=R1
value=360k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -180 -130 0 0 {name=vavdd value="dc \{AVDD\} pulse 0 \{AVDD\} 1u 1u" savecurrent=false
}
C {devices/gnd.sym} 430 -60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -40 -130 0 0 {name=vena value="\{AVDD\}" savecurrent=false
}
C {devices/vsource.sym} 170 -130 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/lab_pin.sym} 750 -430 0 1 {name=p9 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 60 -130 0 0 {name=vsel value="\{AVDD\}" savecurrent=false
}
