v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -170 440 -170 {
lab=GND}
N 420 -170 420 -20 {
lab=GND}
N 410 -230 440 -230 {
lab=GND}
N 410 -230 410 -20 {
lab=GND}
N 200 -100 200 -20 {
lab=GND}
N 200 -190 200 -160 {
lab=#net1}
N 200 -190 440 -190 {
lab=#net1}
N 120 -60 120 -20 {
lab=GND}
N 120 -250 440 -250 {
lab=vavdd}
N 320 -210 320 -160 {
lab=#net2}
N 320 -210 440 -210 {
lab=#net2}
N 320 -100 320 -20 {
lab=GND}
N 740 -220 790 -220 {
lab=vout}
N 120 -160 120 -120 {
lab=#net3}
N 120 -250 120 -220 {
lab=vavdd}
N 120 -20 440 -20 {
lab=GND}
N 120 -270 440 -270 {
lab=#net4}
N 120 -300 120 -270 {
lab=#net4}
N 120 -400 120 -360 {
lab=vavdd}
N 440 -20 770 -20 {
lab=GND}
N 770 -90 770 -20 {
lab=GND}
N 770 -220 770 -150 {
lab=vout}
C {devices/code.sym} 1005 -140 0 0 {name=TRAN_SIM only_toplevel=false value=".option savecurrents
.control
save all
op
write ldo_tb.raw
set appendwrite
tran 100n 100u
write ldo_tb.raw
plot vout
.endc
"}
C {sky130_fd_pr/corner.sym} 870 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {ldo.sym} 590 -220 0 0 {name=x1}
C {devices/gnd.sym} 440 -20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 120 -90 0 0 {name=vavdd value="pwl(0 0 1u 0 2u 3.3 100u 3.3) dc 3.3" savecurrent=false
}
C {devices/lab_pin.sym} 790 -220 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/launcher.sym} 430 -320 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
}
C {devices/isource.sym} 120 -330 0 0 {name=ibias value=200n}
C {devices/vsource.sym} 200 -130 0 0 {name=vdvdd value=1.8 savecurrent=false
}
C {devices/vsource.sym} 320 -130 0 0 {name=vdvdd1 value=1.8 savecurrent=false
}
C {devices/ammeter.sym} 120 -190 0 0 {name=vsupply savecurrent=true}
C {devices/lab_pin.sym} 120 -400 0 1 {name=p2 sig_type=std_logic lab=vavdd}
C {devices/lab_pin.sym} 120 -250 0 0 {name=p3 sig_type=std_logic lab=vavdd}
C {devices/isource.sym} 770 -120 0 0 {name=iload value=50u}
