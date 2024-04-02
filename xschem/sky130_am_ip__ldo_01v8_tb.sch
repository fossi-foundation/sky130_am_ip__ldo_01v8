v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -60 120 -20 {
lab=GND}
N 740 -220 790 -220 {
lab=out}
N 120 -160 120 -120 {
lab=#net1}
N 120 -240 120 -220 {
lab=vdd}
N 120 -20 440 -20 {
lab=GND}
N 760 -80 760 -20 {
lab=GND}
N 760 -220 760 -140 {
lab=out}
N 440 -20 760 -20 {
lab=GND}
N 620 -130 640 -130 {
lab=GND}
N 620 -130 620 -20 {
lab=GND}
N 550 -220 570 -220 {
lab=GND}
N 550 -220 550 -20 {
lab=GND}
N 390 -200 390 -130 {
lab=#net2}
N 390 -200 570 -200 {
lab=#net2}
N 390 -70 390 -20 {
lab=GND}
N 580 -60 580 -20 {
lab=GND}
N 580 -150 580 -120 {
lab=#net3}
N 580 -150 640 -150 {
lab=#net3}
N 480 -170 480 -100 {
lab=#net4}
N 480 -170 640 -170 {
lab=#net4}
N 480 -40 480 -20 {
lab=GND}
N 120 -240 570 -240 {
lab=vdd}
C {devices/code.sym} 1185 -140 0 0 {name=TRAN_SIM only_toplevel=false value=".option savecurrents
.control
save all
op
write sky130_am_ip__ldo_01v8_tb.raw
set appendwrite

ac dec 10 10 1e9
set units=degrees
plot db(out)

dc vavdd 0 3.3 10m
plot v(out)

tran 100n 100u
plot v(out)
.endc
"}
C {sky130_fd_pr/corner.sym} 1070 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} 440 -20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -90 0 0 {name=vavdd value="pwl(0 0 1u 0 10u 3.3 100u 3.3) dc 3.3 ac 1" savecurrent=false
}
C {devices/lab_pin.sym} 790 -220 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/launcher.sym} 430 -320 0 0 {name=h5
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
C {devices/ammeter.sym} 120 -190 0 0 {name=vsupply savecurrent=true}
C {devices/lab_pin.sym} 120 -240 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {sky130_am_ip__ldo_01v8.sym} 660 -220 0 0 {name=x1}
C {devices/res.sym} 760 -110 0 0 {name=R1
value=360k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 390 -100 0 0 {name=vref value=1.2 savecurrent=false
}
C {devices/vsource.sym} 580 -90 0 0 {name=vdvdd value=1.8 savecurrent=false
}
C {devices/vsource.sym} 480 -70 0 0 {name=vena value="1.8" savecurrent=false
}
