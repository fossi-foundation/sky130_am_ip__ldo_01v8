v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Reference selection} 630 -740 0 0 0.5 0.5 {}
N 710 -140 750 -140 {
lab=vref_int}
N 710 -260 710 -140 {
lab=vref_int}
N 710 -260 830 -260 {
lab=vref_int}
N 890 -260 930 -260 {
lab=vref}
N 930 -260 930 -140 {
lab=vref}
N 810 -140 930 -140 {
lab=vref}
N 860 -260 860 -220 {
lab=avdd}
N 780 -180 780 -140 {
lab=avss}
N 930 -200 990 -200 {
lab=vref}
N 780 -100 780 -60 {
lab=sel_b}
N 860 -340 860 -300 {
lab=sel_3v3}
N 710 -420 750 -420 {
lab=vref_ext}
N 710 -540 710 -420 {
lab=vref_ext}
N 710 -540 830 -540 {
lab=vref_ext}
N 890 -540 930 -540 {
lab=vref}
N 930 -540 930 -420 {
lab=vref}
N 810 -420 930 -420 {
lab=vref}
N 860 -540 860 -500 {
lab=avdd}
N 780 -460 780 -420 {
lab=avss}
N 650 -480 710 -480 {
lab=vref_ext}
N 930 -480 990 -480 {
lab=vref}
N 780 -380 780 -340 {
lab=sel_3v3}
N 860 -620 860 -580 {
lab=sel_b}
N 990 -480 990 -200 {
lab=vref}
N 990 -340 1050 -340 {
lab=vref}
N 650 -340 860 -340 {
lab=sel_3v3}
N 650 -620 860 -620 {
lab=sel_b}
N 650 -60 780 -60 {
lab=sel_b}
N 650 -200 710 -200 {
lab=vref_int}
N 290 -650 290 -600 {
lab=avdd}
N 290 -90 290 -40 {
lab=avss}
N 290 -540 290 -150 {
lab=sel_b}
N 230 -570 250 -570 {
lab=sel}
N 230 -570 230 -120 {
lab=sel}
N 230 -120 250 -120 {
lab=sel}
N 290 -120 310 -120 {
lab=avss}
N 310 -120 310 -40 {
lab=avss}
N 290 -570 310 -570 {
lab=avdd}
N 310 -650 310 -570 {
lab=avdd}
N 150 -360 230 -360 {
lab=sel}
N 290 -360 350 -360 {
lab=sel_b}
N 150 -650 350 -650 {
lab=avdd}
N 150 -40 350 -40 {
lab=avss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -280 3 1 {name=M37
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
C {devices/lab_pin.sym} 860 -500 3 0 {name=p32 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 780 -180 1 0 {name=p21 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 780 -120 3 0 {name=M49
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -560 3 1 {name=M50
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 780 -400 3 0 {name=M51
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
C {devices/lab_pin.sym} 650 -620 0 0 {name=p26 sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 650 -340 0 0 {name=p28 sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 650 -60 0 0 {name=p30 sig_type=std_logic lab=sel_b}
C {devices/lab_pin.sym} 860 -220 3 0 {name=p40 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 780 -460 1 0 {name=p57 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 650 -480 0 0 {name=p41 sig_type=std_logic lab=vref_ext}
C {devices/lab_pin.sym} 650 -200 0 0 {name=p42 sig_type=std_logic lab=vref_int}
C {devices/lab_pin.sym} 1050 -340 0 1 {name=p46 sig_type=std_logic lab=vref}
C {devices/iopin.sym} 1390 -560 0 1 {name=p59 lab=avdd}
C {devices/iopin.sym} 1390 -520 0 1 {name=p61 lab=avss}
C {devices/ipin.sym} 1390 -600 0 0 {name=p62 lab=sel}
C {devices/opin.sym} 1480 -680 0 0 {name=p63 lab=vref}
C {devices/ipin.sym} 1390 -640 0 0 {name=p1 lab=vref_int}
C {devices/ipin.sym} 1390 -680 0 0 {name=p2 lab=vref_ext}
C {devices/lab_pin.sym} 150 -650 0 0 {name=p43 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 150 -40 0 0 {name=p44 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 270 -570 0 0 {name=M1
W=3.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 270 -120 0 0 {name=M41
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
C {devices/lab_pin.sym} 150 -360 2 1 {name=p3 sig_type=std_logic lab=sel}
C {devices/lab_pin.sym} 350 -360 3 0 {name=p4 sig_type=std_logic lab=sel_b}
