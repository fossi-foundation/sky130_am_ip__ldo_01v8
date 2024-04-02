v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -250 400 -250 {
lab=vp}
N 40 -250 60 -250 {
lab=vdd}
N 40 -320 40 -250 {
lab=vdd}
N 60 -320 60 -280 {
lab=vdd}
N 60 -220 60 -160 {
lab=vp}
N 60 -200 120 -200 {
lab=vp}
N 120 -250 120 -200 {
lab=vp}
N 440 -250 460 -250 {
lab=vdd}
N 460 -320 460 -250 {
lab=vdd}
N 440 -320 440 -280 {
lab=vdd}
N 320 -140 320 -120 {
lab=#net1}
N 320 -140 580 -140 {
lab=#net1}
N 580 -140 580 -120 {
lab=#net1}
N 320 -90 340 -90 {
lab=vdd}
N 340 -320 340 -90 {
lab=vdd}
N 560 -90 590 -90 {
lab=vdd}
N 560 -320 560 -90 {
lab=vdd}
N 260 -90 280 -90 {
lab=vref}
N 620 -90 640 -90 {
lab=vin}
N 1000 -250 1020 -250 {
lab=vdd}
N 1020 -320 1020 -250 {
lab=vdd}
N 1000 -320 1000 -280 {
lab=vdd}
N 100 60 180 60 {
lab=vb_1}
N 60 90 60 120 {
lab=vss}
N 830 90 830 120 {
lab=vss}
N 1000 90 1000 120 {
lab=vss}
N 870 60 960 60 {
lab=vb_1}
N 870 -70 960 -70 {
lab=vb_2}
N 810 -250 830 -250 {
lab=vdd}
N 810 -320 810 -250 {
lab=vdd}
N 830 -320 830 -280 {
lab=vdd}
N 830 -40 830 30 {
lab=vdiff_n}
N 1000 -40 1000 30 {
lab=vdiff_p}
N 870 -250 960 -250 {
lab=#net2}
N 810 -70 830 -70 {
lab=vss}
N 810 -70 810 120 {
lab=vss}
N 1000 -70 1020 -70 {
lab=vss}
N 1020 -70 1020 120 {
lab=vss}
N 580 -20 910 -20 {
lab=vdiff_p}
N 580 -60 580 -20 {
lab=vdiff_p}
N 320 -60 320 20 {
lab=vdiff_n}
N 320 20 720 20 {
lab=vdiff_n}
N 20 -320 1040 -320 {
lab=vdd}
N 40 120 1050 120 {
lab=vss}
N 100 -30 180 -30 {
lab=vb_2}
N 60 -100 60 -60 {
lab=vb_2}
N 60 0 60 30 {
lab=vb_1}
N 60 -80 120 -80 {
lab=vb_2}
N 120 -80 120 -30 {
lab=vb_2}
N 60 20 120 20 {
lab=vb_1}
N 120 20 120 60 {
lab=vb_1}
N 40 -30 60 -30 {
lab=vss}
N 40 -30 40 120 {
lab=vss}
N 40 60 60 60 {
lab=vss}
N 730 -520 780 -520 {
lab=vout}
N 800 -480 850 -480 {
lab=vin}
N 800 -440 850 -440 {
lab=vref}
N 800 -400 850 -400 {
lab=vss}
N 800 -360 850 -360 {
lab=vdd}
N 810 60 830 60 {
lab=vss}
N 1000 60 1020 60 {
lab=vss}
N 910 -20 1000 -20 {
lab=vdiff_p}
N 440 -220 440 -140 {
lab=#net1}
N 720 20 830 20 {
lab=vdiff_n}
N 1340 -320 1340 -280 {
lab=vdd}
N 1340 90 1340 120 {
lab=vss}
N 1320 120 1390 120 {
lab=vss}
N 1320 -320 1380 -320 {
lab=vdd}
N 730 -560 780 -560 {
lab=vout2}
N 1240 -250 1300 -250 {
lab=vout}
N 1340 -220 1340 -170 {
lab=vout2}
N 1340 -110 1340 -40 {
lab=vin}
N 1340 20 1340 90 {
lab=vss}
N 1270 -80 1340 -80 {
lab=vin}
N 1340 -250 1360 -250 {
lab=vss}
N 1360 -250 1360 120 {
lab=vss}
N 1340 -200 1500 -200 {
lab=vout2}
N 1500 -200 1500 -160 {
lab=vout2}
N 1500 -100 1500 120 {
lab=vss}
N 1390 120 1530 120 {
lab=vss}
N 870 -160 960 -160 {
lab=vb_3}
N 830 -220 830 -190 {
lab=#net3}
N 1000 -220 1000 -190 {
lab=v_y}
N 830 -130 830 -100 {
lab=#net2}
N 1000 -130 1000 -100 {
lab=vout}
N 810 -160 830 -160 {
lab=vdd}
N 810 -250 810 -160 {
lab=vdd}
N 1000 -160 1020 -160 {
lab=vdd}
N 1020 -250 1020 -160 {
lab=vdd}
N 830 -120 900 -120 {
lab=#net2}
N 900 -250 900 -120 {
lab=#net2}
N 540 60 610 60 {
lab=vb_3}
C {devices/isource.sym} 60 -130 0 0 {name=I0 value=200n}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -250 0 1 {name=M1
W=1.4
L=6.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 -250 0 0 {name=M2
W=1
L=6.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -90 0 0 {name=M3
W=1.5
L=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 600 -90 0 1 {name=M4
W=1.5
L=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -250 0 0 {name=M5
W=1
L=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 850 -70 0 1 {name=M6
W=1
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 980 -70 0 0 {name=M7
W=1
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 850 60 0 1 {name=M8
W=1
L=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 980 60 0 0 {name=M9
W=1
L=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 60 0 1 {name=M10
W=1
L=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 850 -250 0 1 {name=M11
W=1
L=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 -30 0 1 {name=M12
W=1
L=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 180 60 0 1 {name=p1 sig_type=std_logic lab=vb_1}
C {devices/lab_pin.sym} 180 -30 0 1 {name=p2 sig_type=std_logic lab=vb_2}
C {devices/lab_pin.sym} 120 -200 0 1 {name=p3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 640 -90 0 1 {name=p4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 260 -90 0 0 {name=p5 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 920 -70 1 1 {name=p7 sig_type=std_logic lab=vb_2}
C {devices/lab_pin.sym} 920 60 1 1 {name=p8 sig_type=std_logic lab=vb_1}
C {devices/code.sym} 1120 -710 0 0 {name=s1 only_toplevel=false value="vdd vdd 0 3.3 ac 1
* vdd1 vdd1 0 3.3
vss vss 0 0
vref vref 0 1.2
* vin vin 0 1.2 ac 1
.option savecurrents
.control
save all
save @m.xm13.msky130_fd_pr__nfet_g5v0d10v5[cgs]
save @m.xm5.msky130_fd_pr__pfet_g5v0d10v5[gds]
op
print @m.xm13.msky130_fd_pr__nfet_g5v0d10v5[cgs]
print @m.xm5.msky130_fd_pr__pfet_g5v0d10v5[gds]
write error_amp.raw
set appendwrite
ac dec 10 10 1e9
write error_amp.raw
set units=degrees
plot db(vout) db(vout2)
plot ph(vout) ph(vout2)
.endc
"}
C {sky130_fd_pr/corner.sym} 1130 -520 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 1040 -320 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1050 120 0 1 {name=p11 sig_type=std_logic lab=vss}
C {devices/opin.sym} 780 -520 0 0 {name=p12 lab=vout}
C {devices/ipin.sym} 800 -480 0 0 {name=p13 lab=vin}
C {devices/ipin.sym} 800 -440 0 0 {name=p14 lab=vref}
C {devices/ipin.sym} 800 -400 0 0 {name=p15 lab=vss}
C {devices/ipin.sym} 800 -360 0 0 {name=p16 lab=vdd}
C {devices/launcher.sym} 330 -410 0 0 {name=h5
descr="annotate" 
tclcommand="xschem annotate_op"
}
C {devices/lab_pin.sym} 1000 0 0 1 {name=p17 sig_type=std_logic lab=vdiff_p
}
C {devices/lab_pin.sym} 830 0 0 1 {name=p18 sig_type=std_logic lab=vdiff_n
}
C {devices/lab_pin.sym} 1380 -320 0 1 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1390 120 0 1 {name=p20 sig_type=std_logic lab=vss}
C {devices/opin.sym} 780 -560 0 0 {name=p22 lab=vout2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1320 -250 0 0 {name=M13
W=250
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1240 -250 0 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/res.sym} 1340 -140 0 0 {name=R1
value=1MEG
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1340 -10 0 0 {name=R2
value=2MEG
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1270 -80 0 0 {name=p21 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 1340 -200 0 0 {name=p23 sig_type=std_logic lab=vout2}
C {devices/res.sym} 1500 -130 0 0 {name=R3
value=360k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 980 -160 0 0 {name=M14
W=1.2
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 850 -160 0 1 {name=M15
W=1.2
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1000 -110 0 1 {name=p9 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 920 -160 1 1 {name=p24 sig_type=std_logic lab=vb_3}
C {devices/vsource.sym} 540 90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 610 60 1 1 {name=p25 sig_type=std_logic lab=vb_3}
C {devices/lab_pin.sym} 1000 -210 2 1 {name=p26 sig_type=std_logic lab=v_y}
