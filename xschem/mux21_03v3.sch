v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Level shifter} 140 -760 0 0 0.5 0.5 {}
T {Output selection} 1100 -760 0 0 0.5 0.5 {}
N 1140 -190 1180 -190 {
lab=in_0}
N 1140 -310 1140 -190 {
lab=in_0}
N 1140 -310 1260 -310 {
lab=in_0}
N 1320 -310 1360 -310 {
lab=out}
N 1360 -310 1360 -190 {
lab=out}
N 1240 -190 1360 -190 {
lab=out}
N 1290 -310 1290 -270 {
lab=avdd}
N 1210 -230 1210 -190 {
lab=avss}
N 1360 -250 1420 -250 {
lab=out}
N 1210 -150 1210 -110 {
lab=sel_b_3v3}
N 1290 -390 1290 -350 {
lab=sel_3v3}
N 1140 -470 1180 -470 {
lab=in_1}
N 1140 -590 1140 -470 {
lab=in_1}
N 1140 -590 1260 -590 {
lab=in_1}
N 1320 -590 1360 -590 {
lab=out}
N 1360 -590 1360 -470 {
lab=out}
N 1240 -470 1360 -470 {
lab=out}
N 1290 -590 1290 -550 {
lab=avdd}
N 1210 -510 1210 -470 {
lab=avss}
N 1080 -530 1140 -530 {
lab=in_1}
N 1360 -530 1420 -530 {
lab=out}
N 1210 -430 1210 -390 {
lab=sel_3v3}
N 1290 -670 1290 -630 {
lab=sel_b_3v3}
N 1420 -530 1420 -250 {
lab=out}
N 1420 -390 1480 -390 {
lab=out}
N 1080 -390 1290 -390 {
lab=sel_3v3}
N 1080 -670 1290 -670 {
lab=sel_b_3v3}
N 1080 -110 1210 -110 {
lab=sel_b_3v3}
N 140 -690 300 -690 {
lab=dvdd}
N 140 -80 300 -80 {
lab=dvss}
N 230 -640 230 -580 {
lab=dvdd}
N 230 -520 230 -200 {
lab=sel_b}
N 230 -140 230 -80 {
lab=dvss}
N 170 -550 190 -550 {
lab=sel}
N 170 -550 170 -170 {
lab=sel}
N 170 -170 190 -170 {
lab=sel}
N 230 -170 250 -170 {
lab=dvss}
N 250 -170 250 -80 {
lab=dvss}
N 230 -550 250 -550 {
lab=dvdd}
N 250 -640 250 -550 {
lab=dvdd}
N 700 -640 700 -580 {
lab=avdd}
N 700 -140 700 -80 {
lab=avss}
N 680 -170 700 -170 {
lab=avss}
N 680 -170 680 -80 {
lab=avss}
N 700 -550 720 -550 {
lab=avdd}
N 720 -640 720 -550 {
lab=avdd}
N 500 -640 500 -580 {
lab=avdd}
N 500 -140 500 -80 {
lab=avss}
N 500 -170 520 -170 {
lab=avss}
N 520 -170 520 -80 {
lab=avss}
N 480 -550 500 -550 {
lab=avdd}
N 480 -640 480 -550 {
lab=avdd}
N 400 -170 460 -170 {
lab=sel_b}
N 740 -170 800 -170 {
lab=sel}
N 500 -520 500 -200 {
lab=sel_3v3}
N 700 -520 700 -200 {
lab=sel_b_3v3}
N 540 -550 560 -550 {
lab=sel_b_3v3}
N 560 -550 640 -450 {
lab=sel_b_3v3}
N 640 -450 700 -450 {
lab=sel_b_3v3}
N 640 -550 660 -550 {
lab=sel_3v3}
N 560 -450 640 -550 {
lab=sel_3v3}
N 500 -450 560 -450 {
lab=sel_3v3}
N 230 -370 300 -370 {
lab=sel_b}
N 120 -370 170 -370 {
lab=sel}
N 400 -690 800 -690 {
lab=avdd}
N 400 -80 800 -80 {
lab=avss}
N 230 -690 230 -640 {
lab=dvdd}
N 250 -690 250 -640 {
lab=dvdd}
N 480 -690 480 -640 {
lab=avdd}
N 500 -690 500 -640 {
lab=avdd}
N 700 -690 700 -640 {
lab=avdd}
N 720 -690 720 -640 {
lab=avdd}
N 1080 -250 1140 -250 {
lab=in_0}
N 1720 -660 1780 -660 {
lab=in_0}
N 1720 -620 1780 -620 {
lab=in_1}
N 1720 -580 1780 -580 {
lab=sel}
N 1720 -520 1780 -520 {
lab=dvdd}
N 1720 -480 1780 -480 {
lab=dvss}
N 1720 -440 1780 -440 {
lab=avdd}
N 1720 -400 1780 -400 {
lab=avss}
N 1920 -660 1980 -660 {
lab=vref_out}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1290 -330 3 1 {name=M48
W=2.5
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
C {devices/lab_pin.sym} 1290 -550 3 0 {name=p32 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1210 -230 1 0 {name=p50 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -170 3 0 {name=M49
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
C {devices/ipin.sym} 1720 -620 0 0 {name=p51 lab=in_1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1290 -610 3 1 {name=M50
W=2.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -450 3 0 {name=M51
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
C {devices/opin.sym} 1980 -660 0 0 {name=p52 lab=out}
C {devices/lab_pin.sym} 1080 -670 0 0 {name=p53 sig_type=std_logic lab=sel_b_3v3}
C {devices/lab_pin.sym} 1080 -390 0 0 {name=p54 sig_type=std_logic lab=sel_3v3}
C {devices/lab_pin.sym} 1080 -110 0 0 {name=p55 sig_type=std_logic lab=sel_b_3v3}
C {devices/lab_pin.sym} 1290 -270 3 0 {name=p56 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1210 -510 1 0 {name=p57 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -550 0 0 {name=M54
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 720 -170 0 1 {name=M55
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 520 -550 0 1 {name=M56
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 -170 0 0 {name=M57
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
C {devices/lab_pin.sym} 400 -170 0 0 {name=p58 sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 800 -170 0 1 {name=p59 sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 300 -370 0 1 {name=p60 sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 700 -370 0 1 {name=p61 sig_type=std_logic lab=sel_b_3v3}
C {devices/lab_pin.sym} 500 -370 0 0 {name=p62 sig_type=std_logic lab=sel_3v3}
C {devices/ipin.sym} 1720 -580 0 0 {name=p65 lab=sel}
C {devices/iopin.sym} 1720 -520 0 1 {name=p63 lab=dvdd}
C {devices/iopin.sym} 1720 -480 0 1 {name=p64 lab=dvss}
C {devices/iopin.sym} 1720 -440 0 1 {name=p21 lab=avdd}
C {devices/iopin.sym} 1720 -400 0 1 {name=p30 lab=avss}
C {devices/ipin.sym} 1720 -660 0 0 {name=p1 lab=in_0}
C {sky130_fd_pr/pfet_01v8.sym} 210 -550 0 0 {name=M37
W=10
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 -170 0 0 {name=M41
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -80 0 0 {name=p2 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 400 -690 0 0 {name=p3 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 140 -690 0 0 {name=p4 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 140 -80 0 0 {name=p5 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 120 -370 0 0 {name=p6 sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 1080 -530 0 0 {name=p7 sig_type=std_logic lab=in_1}
C {devices/lab_pin.sym} 1080 -250 0 0 {name=p8 sig_type=std_logic lab=in_0}
C {devices/lab_pin.sym} 1480 -390 0 1 {name=p9 sig_type=std_logic lab=out}
