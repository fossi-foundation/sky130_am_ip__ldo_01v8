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
N 110 -740 180 -740 {
lab=vin}
N 110 -700 180 -700 {
lab=vref}
N 110 -660 180 -660 {
lab=vdd}
N 110 -620 180 -620 {
lab=vss}
N 80 -570 150 -570 {
lab=vout}
C {cascode_opamp.sym} 310 -170 0 0 {name=x1}
C {devices/ipin.sym} 110 -620 0 0 {name=p21 lab=vss}
C {devices/code_shown.sym} 740 -620 0 0 {name=NGSPICE
only_toplevel=false
value="* netlist
vss vss 0 0
vin vin 0 1.8 ac 1
vref vref 0 1.8
vdd vdd 0 3.3
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
C {devices/opin.sym} 150 -570 0 0 {name=p5 lab=vout}
C {devices/lab_pin.sym} 110 -180 0 0 {name=p6 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 110 -200 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 550 -200 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/ipin.sym} 110 -660 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 110 -700 0 0 {name=p8 lab=vref}
C {devices/ipin.sym} 110 -740 0 0 {name=p9 lab=vin}
