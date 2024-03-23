v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 760 -480 760 -420 {
lab=#net1}
N 620 -320 620 -300 {
lab=vp}
N 620 -320 900 -320 {
lab=vp}
N 900 -320 900 -300 {
lab=vp}
N 760 -360 760 -320 {
lab=vp}
N 1210 -510 1410 -510 {
lab=#net2}
N 1210 -390 1410 -390 {
lab=vb2}
N 1170 -480 1170 -420 {
lab=#net3}
N 1450 -480 1450 -420 {
lab=vy}
N 1170 -360 1170 -300 {
lab=#net2}
N 1210 -270 1410 -270 {
lab=vb1}
N 1450 -360 1450 -300 {
lab=vx}
N 1170 -240 1170 -180 {
lab=vref_p}
N 1210 -150 1410 -150 {
lab=vbn}
N 1450 -240 1450 -180 {
lab=vout_p}
N 620 -240 620 -200 {
lab=vout_p}
N 900 -240 900 -200 {
lab=vref_p}
N 1770 -600 1770 -540 {
lab=vdd}
N 760 -600 760 -540 {
lab=vdd}
N 1170 -600 1170 -540 {
lab=vdd}
N 1450 -600 1450 -540 {
lab=vdd}
N 1080 -200 1170 -200 {
lab=vref_p}
N 1450 -320 1630 -320 {
lab=vx}
N 1630 -510 1630 -320 {
lab=vx}
N 1630 -510 1730 -510 {
lab=vx}
N 1170 -120 1170 -80 {
lab=vss}
N 1450 -120 1450 -80 {
lab=vss}
N 1770 -260 1770 -80 {
lab=vss}
N 1770 -380 1770 -320 {
lab=vctrl}
N 1770 -480 1770 -440 {
lab=vout}
N 1720 -340 1770 -340 {
lab=vctrl}
N 540 -270 580 -270 {
lab=vctrl}
N 940 -270 980 -270 {
lab=vref}
N 1450 -200 1540 -200 {
lab=vout_p}
N 270 -510 720 -510 {
lab=#net4}
N 270 -390 720 -390 {
lab=vbp}
N 230 -600 230 -540 {
lab=vdd}
N 230 -480 230 -420 {
lab=#net5}
N 230 -360 230 -280 {
lab=#net4}
N 230 -220 230 -80 {
lab=vss}
N 330 -510 330 -340 {
lab=#net4}
N 230 -340 330 -340 {
lab=#net4}
N 1170 -340 1270 -340 {
lab=#net2}
N 1270 -510 1270 -340 {
lab=#net2}
N 420 -120 420 -80 {
lab=vss}
N 420 -220 420 -180 {
lab=vbn}
N 420 -600 420 -280 {
lab=vdd}
N 460 -150 570 -150 {
lab=vbn}
N 420 -200 500 -200 {
lab=vbn}
N 500 -200 500 -150 {
lab=vbn}
N 140 -510 230 -510 {
lab=vdd}
N 140 -390 230 -390 {
lab=vdd}
N 140 -80 230 -80 {
lab=vss}
N 330 -150 420 -150 {
lab=vss}
N 810 -270 900 -270 {
lab=vdd}
N 620 -270 710 -270 {
lab=vdd}
N 760 -390 850 -390 {
lab=vdd}
N 760 -510 850 -510 {
lab=vdd}
N 1080 -510 1170 -510 {
lab=vdd}
N 1080 -390 1170 -390 {
lab=vdd}
N 1080 -270 1170 -270 {
lab=vss}
N 1080 -150 1170 -150 {
lab=vss}
N 1450 -510 1540 -510 {
lab=vdd}
N 230 -80 1770 -80 {
lab=vss}
N 230 -600 1770 -600 {
lab=vdd}
N 1450 -390 1540 -390 {
lab=vdd}
N 1450 -270 1540 -270 {
lab=vss}
N 1450 -150 1540 -150 {
lab=vss}
N 1770 -510 1860 -510 {
lab=vss}
N 280 -790 400 -790 {
lab=vdd}
N 280 -750 400 -750 {
lab=vref}
N 280 -710 400 -710 {
lab=vss}
N 280 -670 400 -670 {
lab=vout}
N 2030 -120 2030 -80 {
lab=vss}
N 2030 -240 2030 -180 {
lab=vb1}
N 2140 -120 2140 -80 {
lab=vss}
N 2140 -240 2140 -180 {
lab=vb2}
N 2140 -350 2140 -310 {
lab=vss}
N 2140 -470 2140 -410 {
lab=vbp}
N 140 -600 230 -600 {
lab=vdd}
N 1770 -460 1910 -460 {
lab=vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 740 -510 0 0 {name=M1
W=6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 740 -390 0 0 {name=M2
W=6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 600 -270 0 0 {name=M3
W=3
L=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 920 -270 0 1 {name=M4
W=3
L=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1190 -510 0 1 {name=M5
W=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1430 -510 0 0 {name=M6
W=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1190 -390 0 1 {name=M7
W=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1430 -390 0 0 {name=M8
W=10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1190 -270 0 1 {name=M9
W=2
L=1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1430 -270 0 0 {name=M10
W=2
L=1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1190 -150 0 1 {name=M11
W=7
L=3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1430 -150 0 0 {name=M12
W=7
L=3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1750 -510 0 0 {name=M13
W=100
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
C {devices/res.sym} 1770 -410 0 0 {name=R1
value=1e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1770 -290 0 0 {name=R2
value=2e6
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 -510 0 1 {name=M14
W=6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 -390 0 1 {name=M15
W=6
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
C {devices/isource.sym} 230 -250 0 0 {name=I0 value=600n}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 440 -150 0 1 {name=M16
W=7
L=3
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
C {devices/isource.sym} 420 -250 0 0 {name=I1 value=700n}
C {devices/lab_pin.sym} 140 -510 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 140 -390 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 140 -80 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 330 -150 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 810 -270 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 710 -270 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 850 -390 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 850 -510 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1080 -510 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1080 -390 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1080 -270 0 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1080 -150 0 0 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1540 -510 0 1 {name=p13 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 1540 -390 0 1 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1540 -270 0 1 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1540 -150 0 1 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1860 -510 0 1 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 620 -200 0 1 {name=p18 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 900 -200 0 0 {name=p19 sig_type=std_logic lab=vref_p}
C {devices/lab_pin.sym} 570 -150 0 1 {name=p20 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 530 -390 1 1 {name=p21 sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 1310 -150 1 1 {name=p22 sig_type=std_logic lab=vbn}
C {devices/lab_pin.sym} 1310 -270 1 1 {name=p23 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 1310 -390 1 1 {name=p24 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 1720 -340 2 1 {name=p25 sig_type=std_logic lab=vctrl
}
C {devices/lab_pin.sym} 540 -270 0 0 {name=p26 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 980 -270 0 1 {name=p27 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 1540 -200 0 1 {name=p28 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 1080 -200 0 0 {name=p29 sig_type=std_logic lab=vref_p}
C {devices/ipin.sym} 280 -790 0 0 {name=p30 lab=vdd}
C {devices/ipin.sym} 280 -750 0 0 {name=p31 lab=vref}
C {devices/ipin.sym} 280 -710 0 0 {name=p32 lab=vss}
C {devices/opin.sym} 400 -670 0 0 {name=p33 lab=vout}
C {devices/vsource.sym} 2030 -150 0 0 {name=V1 value=2 savecurrent=false}
C {devices/lab_pin.sym} 2030 -220 0 1 {name=p34 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 2030 -80 0 1 {name=p35 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 2140 -150 0 0 {name=V2 value=1.9 savecurrent=false}
C {devices/lab_pin.sym} 2140 -220 0 1 {name=p36 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 2140 -80 0 1 {name=p37 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 2140 -450 0 1 {name=p40 sig_type=std_logic lab=vbp}
C {devices/lab_pin.sym} 2140 -310 0 1 {name=p41 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 140 -600 0 0 {name=p42 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 2140 -380 0 0 {name=V3 value=1.5 savecurrent=false}
C {devices/lab_pin.sym} 1910 -460 2 0 {name=p38 sig_type=std_logic lab=vout
}
C {devices/lab_pin.sym} 760 -340 0 0 {name=p39 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 1450 -450 0 0 {name=p43 sig_type=std_logic lab=vy}
C {devices/lab_pin.sym} 1450 -340 0 0 {name=p44 sig_type=std_logic lab=vx}
