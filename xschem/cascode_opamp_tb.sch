v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -210 160 -210 {
lab=vin}
N 110 -190 160 -190 {
lab=vref}
N 110 -170 160 -170 {
lab=vss}
N 110 -150 160 -150 {
lab=vdd}
N 460 -210 550 -210 {
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
N 90 -130 90 -100 {
lab=#net1}
N 90 -130 160 -130 {
lab=#net1}
N 90 -40 90 -20 {
lab=vss}
C {cascode_opamp.sym} 310 -170 0 0 {name=x1}
C {devices/ipin.sym} 110 -620 0 0 {name=p21 lab=vss}
C {devices/code_shown.sym} 740 -620 0 0 {name=NGSPICE
only_toplevel=false
value="* netlist
vss vss 0 0
vin vin 0 1.8 ac 1
vref vref 0 1.8
vdd vdd 0 3.3
.option savecurrents
* ngspice control
.control
save all
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gds]
save @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vdsat]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[gm]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[gds]
save @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[vdsat]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[gds]
save @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
dc vin 0 3.3 0.001
write cascode_opamp_tb.raw
set appendwrite
op
print @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gm]
print @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[gds]
print @m.x1.xm6.msky130_fd_pr__nfet_g5v0d10v5[vdsat]
print @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[gm]
print @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[gds]
print @m.x1.xm8.msky130_fd_pr__nfet_g5v0d10v5[vdsat]
print @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[gm]
print @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[gds]
print @m.x1.xm10.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
print @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[gm]
print @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[gds]
print @m.x1.xm12.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
write cascode_opamp_tb.raw
set appendwrite
ac dec 10 10 10e9
write cascode_opamp_tb.raw
set appendwrite
plot dc1.vout
plot vdb(ac1.vout)
plot 180/PI*ph(ac1.vout)
.endc
"}
C {sky130_fd_pr/corner.sym} 350 -700 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 110 -170 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 110 -150 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/opin.sym} 150 -570 0 0 {name=p5 lab=vout}
C {devices/lab_pin.sym} 110 -190 0 0 {name=p6 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 110 -210 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 550 -210 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/ipin.sym} 110 -660 0 0 {name=p7 lab=vdd}
C {devices/ipin.sym} 110 -700 0 0 {name=p8 lab=vref}
C {devices/ipin.sym} 110 -740 0 0 {name=p9 lab=vin}
C {devices/isource.sym} 90 -70 0 0 {name=I0 value=1.3u}
C {devices/lab_pin.sym} 90 -20 0 0 {name=p10 sig_type=std_logic lab=vss}
