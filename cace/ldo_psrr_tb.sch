v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 740 -500 840 -500 {
lab=vout}
N 400 -460 440 -460 {
lab=GND}
N 400 -460 400 -300 {
lab=GND}
N 80 -340 80 -320 {
lab=GND}
N 80 -320 400 -320 {
lab=GND}
N 340 -340 340 -320 {
lab=GND}
N 340 -480 340 -400 {
lab=#net1}
N 340 -480 440 -480 {
lab=#net1}
N 80 -500 80 -400 {
lab=#net2}
N 80 -500 440 -500 {
lab=#net2}
C {sky130_fd_pr/corner.sym} 1210 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 1140 -860 0 0 {name=NGSPICE
only_toplevel=false
value="* netlist
.option savecurrents
* ngspice control
.control
save all
* verify PSRR
ac dec 10 10 10e9
set units=degrees
plot db(vout) title 'PSRR (gain)'
plot ph(vout) title 'PSRR (phase)'
.endc
"}
C {ldo.sym} 590 -480 0 0 {name=x1}
C {devices/opin.sym} 840 -500 0 0 {name=p4 lab=vout}
C {devices/vsource.sym} 340 -370 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/vsource.sym} 80 -370 0 0 {name=vdd value="pwl(0 0 10n 3.3 300u 3.3) dc 3.3 ac 1" savecurrent=false}
C {devices/gnd.sym} 400 -300 0 0 {name=l1 lab=GND}
