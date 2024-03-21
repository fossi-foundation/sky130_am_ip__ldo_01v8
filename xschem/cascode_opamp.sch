v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 690 -70 690 -30 {
lab=vss}
N 200 -70 200 -30 {
lab=vss}
N 240 -100 650 -100 {
lab=#net1}
N 200 -220 200 -130 {
lab=#net1}
N 200 -180 280 -180 {
lab=#net1}
N 280 -180 280 -100 {
lab=#net1}
N 60 -100 200 -100 {
lab=vss}
N 690 -100 820 -100 {
lab=vss}
N 200 -370 200 -280 {
lab=#net2}
N 240 -250 650 -250 {
lab=#net2}
N 690 -220 690 -130 {
lab=#net3}
N 280 -320 280 -250 {
lab=#net2}
N 200 -320 280 -320 {
lab=#net2}
N 690 -250 810 -250 {
lab=vss}
N 60 -250 200 -250 {
lab=vss}
N 570 -530 570 -510 {
lab=#net4}
N 570 -510 810 -510 {
lab=#net4}
N 810 -530 810 -510 {
lab=#net4}
N 570 -560 640 -560 {
lab=vss}
N 740 -560 810 -560 {
lab=vss}
N 460 -560 530 -560 {
lab=vref}
N 850 -560 940 -560 {
lab=vin}
N 610 -670 770 -670 {
lab=vb1}
N 570 -640 570 -590 {
lab=#net5}
N 810 -640 810 -590 {
lab=vx}
N 570 -830 570 -700 {
lab=vb2}
N 810 -830 810 -700 {
lab=vout}
N 570 -930 570 -890 {
lab=vb3}
N 810 -930 810 -890 {
lab=vy}
N 570 -1030 570 -990 {
lab=vdd}
N 570 -1030 810 -1030 {
lab=vdd}
N 810 -1030 810 -990 {
lab=vdd}
N 610 -960 770 -960 {
lab=vb3}
N 610 -860 770 -860 {
lab=vb2}
N 460 -670 570 -670 {
lab=vss}
N 810 -670 940 -670 {
lab=vss}
N 690 -1080 690 -1030 {
lab=vdd}
N 810 -860 940 -860 {
lab=vdd}
N 810 -960 940 -960 {
lab=vdd}
N 460 -860 570 -860 {
lab=vdd}
N 460 -960 570 -960 {
lab=vdd}
N 810 -770 940 -770 {
lab=vout}
N 690 -720 690 -670 {
lab=vb1}
N 1310 -900 1370 -900 {
lab=vin}
N 1310 -840 1370 -840 {
lab=vref}
N 1310 -780 1370 -780 {
lab=vss}
N 1260 -960 1310 -960 {
lab=vout}
N 690 -510 690 -480 {
lab=#net4}
N 690 -420 690 -280 {
lab=vp}
N 680 -960 680 -910 {
lab=vb3}
N 680 -860 680 -800 {
lab=vb2}
N 200 -520 200 -430 {
lab=vdd}
N 570 -800 680 -800 {
lab=vb2}
N 570 -910 680 -910 {
lab=vb3}
N 1040 -310 1040 -260 {
lab=vss}
N 1040 -410 1040 -370 {
lab=vb1}
N 1310 -720 1370 -720 {
lab=vdd}
C {devices/lab_pin.sym} 690 -40 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 200 -40 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/isource.sym} 200 -400 0 0 {name=I0 value=600n}
C {devices/lab_pin.sym} 60 -100 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 820 -100 0 1 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 60 -250 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 810 -250 0 1 {name=p9 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 -100 0 1 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 -250 0 1 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 670 -100 0 0 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 670 -250 0 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 550 -560 0 0 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 830 -560 0 1 {name=M6
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
C {devices/lab_pin.sym} 640 -560 0 1 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 740 -560 0 0 {name=p5 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 -670 0 1 {name=M7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 790 -670 0 0 {name=M8
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 -860 0 1 {name=M9
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 790 -860 0 0 {name=M10
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 590 -960 0 1 {name=M11
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 790 -960 0 0 {name=M12
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 940 -560 0 1 {name=p10 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 460 -560 0 0 {name=p11 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 460 -670 0 0 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 940 -670 0 1 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 940 -860 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 940 -960 0 1 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 460 -960 0 0 {name=p15 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 460 -860 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 690 -1080 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 940 -770 0 1 {name=p18 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 690 -720 0 1 {name=p20 sig_type=std_logic lab=vb1}
C {devices/ipin.sym} 1310 -900 0 0 {name=p21 lab=vin}
C {devices/ipin.sym} 1310 -840 0 0 {name=p22 lab=vref}
C {devices/ipin.sym} 1310 -780 0 0 {name=p23 lab=vss}
C {devices/opin.sym} 1310 -960 0 0 {name=p24 lab=vout}
C {devices/lab_pin.sym} 690 -350 0 1 {name=p25 sig_type=std_logic lab=vp}
C {devices/ammeter.sym} 690 -450 0 0 {name=Vbias savecurrent=true}
C {devices/lab_pin.sym} 810 -620 0 0 {name=p26 sig_type=std_logic lab=vx}
C {devices/lab_pin.sym} 810 -910 0 0 {name=p27 sig_type=std_logic lab=vy}
C {devices/lab_pin.sym} 680 -930 0 1 {name=p28 sig_type=std_logic lab=vb3}
C {devices/lab_pin.sym} 680 -820 0 1 {name=p32 sig_type=std_logic lab=vb2}
C {devices/lab_pin.sym} 200 -520 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 1040 -340 0 0 {name=V1 value=2 savecurrent=false}
C {devices/lab_pin.sym} 1040 -410 0 1 {name=p29 sig_type=std_logic lab=vb1}
C {devices/lab_pin.sym} 1040 -260 0 1 {name=p30 sig_type=std_logic lab=vss}
C {devices/ipin.sym} 1310 -720 0 0 {name=p31 lab=vdd}
