v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -200 160 -200 {
lab=vin}
N 110 -180 160 -180 {
lab=vref}
N 110 -160 160 -160 {
lab=vss}
N 110 -140 160 -140 {
lab=vdd}
N 460 -200 550 -200 {
lab=vout}
N 400 -430 400 -400 {
lab=vss}
N 400 -550 400 -490 {
lab=#net1}
N 400 -720 400 -610 {
lab=vdd}
N 290 -430 290 -400 {
lab=vss}
N 290 -530 290 -490 {
lab=vref}
C {cascode_opamp.sym} 310 -170 0 0 {name=x1}
C {devices/ipin.sym} 110 -200 0 0 {name=p21 lab=vin}
C {devices/code_shown.sym} 740 -620 0 0 {name=NGSPICE
only_toplevel=false
value="* netlist
vss vss 0 0
vin vin 0 1.8 ac 1
* ngspice control
.control
save vout vin vq
dc vin 0 3.3 0.001
write cascode_opamp_tb.raw
set appendwrite
op
write cascode_opamp_tb.raw
set appendwrite
ac dec 10 10 10e6
write cascode_opamp_tb.raw
set appendwrite
plot dc1.vout
plot vdb(ac1.vout)
plot 180/PI*ph(ac1.vout)
plot i(dc1.vq)
.endc
"}
C {sky130_fd_pr/corner.sym} 760 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 110 -160 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 110 -140 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/opin.sym} 550 -200 0 0 {name=p5 lab=vout}
C {devices/vsource.sym} 400 -460 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/lab_pin.sym} 400 -680 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 400 -410 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 110 -180 0 0 {name=p6 sig_type=std_logic lab=vref}
C {devices/ammeter.sym} 400 -580 0 0 {name=Vq savecurrent=true}
C {devices/vsource.sym} 290 -460 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 290 -410 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 290 -510 0 0 {name=p8 sig_type=std_logic lab=vref}
