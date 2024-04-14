v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -370 290 -370 {
lab=ena}
N 590 -410 750 -410 {
lab=vout}
N 750 -410 750 -180 {
lab=vout}
N 750 -120 750 -60 {
lab=GND}
N 590 -370 610 -370 {
lab=GND}
N 50 -410 50 -160 {
lab=#net1}
N 50 -410 290 -410 {
lab=#net1}
N 50 -60 750 -60 {
lab=GND}
N 50 -100 50 -60 {
lab=GND}
N 750 -60 1130 -60 {
lab=GND}
N 890 -160 890 -120 {
lab=#net2}
N 890 -260 890 -220 {
lab=avdd}
N 590 -390 650 -390 {
lab=avdd}
N 230 -390 290 -390 {
lab=sel}
N 1390 -260 1390 -120 {
lab=sel}
N 1130 -60 1390 -60 {
lab=GND}
N 1130 -120 1130 -60 {
lab=GND}
N 1130 -260 1130 -180 {
lab=ena}
N 610 -370 610 -60 {
lab=GND}
C {devices/code.sym} 1675 -190 0 0 {name=TRAN_SIM only_toplevel=false value=".option savecurrents
.control
save all

op
write sky130_am_ip__ldo_01v8_tb.raw
set appendwrite

ac dec 10 10 1e9
set units=degrees
plot db(vout)
* 
* dc vavdd 0 3.3 100m
* plot vout
.endc
"}
C {sky130_fd_pr/corner.sym} 1560 -190 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 1630 -280 0 0 {name=h5
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
C {devices/vsource.sym} 890 -90 0 0 {name=vavdd value="3.3 ac 1" savecurrent=false
}
C {devices/gnd.sym} 430 -60 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 890 -190 0 0 {name=vsupply1 savecurrent=true}
C {devices/vsource.sym} 1130 -150 0 0 {name=vena value=3.3 savecurrent=false
}
C {devices/lab_pin.sym} 230 -370 0 0 {name=p5 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 50 -130 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/lab_pin.sym} 890 -260 0 1 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 650 -390 0 1 {name=p7 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1130 -260 0 1 {name=p8 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 750 -410 0 1 {name=p9 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 230 -390 0 0 {name=p10 sig_type=std_logic lab=sel}
C {devices/vsource.sym} 1390 -90 0 0 {name=vsel value=3.3 savecurrent=false
}
C {devices/lab_pin.sym} 1390 -260 0 1 {name=p1 sig_type=std_logic lab=sel}
