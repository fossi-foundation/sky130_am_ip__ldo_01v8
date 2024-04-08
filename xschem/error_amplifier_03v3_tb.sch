v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 860 -390 920 -390 {
lab=dvdd}
N 500 -390 560 -390 {
lab=ena}
N 860 -410 1020 -410 {
lab=vout}
N 1020 -410 1020 -180 {
lab=vout}
N 1020 -120 1020 -60 {
lab=GND}
N 860 -330 880 -330 {
lab=GND}
N 860 -370 880 -370 {
lab=GND}
N 880 -370 880 -60 {
lab=GND}
N 400 -430 400 -160 {
lab=#net1}
N 400 -430 560 -430 {
lab=#net1}
N 320 -410 320 -160 {
lab=#net2}
N 320 -410 560 -410 {
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
N 1260 -260 1260 -120 {
lab=dvdd}
N 1400 -260 1400 -120 {
lab=ena}
N 860 -350 920 -350 {
lab=avdd}
N 860 -430 920 -430 {
lab=vref_int}
C {devices/vsource.sym} 1160 -90 0 0 {name=vdd value=3.3 savecurrent=false
}
C {devices/gnd.sym} 700 -60 0 0 {name=l1 lab=GND}
C {devices/code.sym} 40 -430 0 0 {name=s1 only_toplevel=false value="* ngspice control
.param W=100
.option savecurrents
.control
save all
op
write error_amplifier_03v3_tb.raw
set appendwrite

dc vdd 0 3.3 10m
plot vout title 'Vdd operating range'

* tran 100n 100u
* plot x1.vbn x1.vcp x1.vbp ena x1.ena_3v3 title 'Transient start-up'
* plot ena x1.ena_b x1.ena_3v3 x1.ena_b_3v3

dc vin 0 3.3 10m
plot vout title 'DC transfer characteristic'

ac dec 10 10 1e9
set units=degrees
plot db(vout) title 'Gain'
plot ph(vout) title 'Phase'
.endc
"}
C {sky130_fd_pr/corner.sym} 40 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 130 -100 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
}
C {devices/ammeter.sym} 1160 -190 0 0 {name=vsupply savecurrent=true}
C {devices/capa.sym} 1020 -150 0 0 {name=C1
m=1
value=1e-13
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1400 -90 0 0 {name=vena value="pulse(0 1.8 0 5n 5n 50u 100u 10) dc 1.8" savecurrent=false
}
C {devices/vsource.sym} 1260 -90 0 0 {name=vdvdd value=1.8 savecurrent=false
}
C {error_amplifier_03v3.sym} 710 -380 0 0 {name=x1}
C {devices/lab_pin.sym} 920 -390 0 1 {name=p3 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 500 -390 0 0 {name=p5 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 320 -130 0 0 {name=vref value=1.2 savecurrent=false}
C {devices/vsource.sym} 400 -130 0 0 {name=vin value="1.2 ac 1" savecurrent=false}
C {devices/lab_pin.sym} 1260 -260 0 1 {name=p4 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1160 -260 0 1 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 920 -350 0 1 {name=p7 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1400 -260 0 1 {name=p8 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 1020 -410 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 920 -430 0 1 {name=p2 sig_type=std_logic lab=vref_int}
