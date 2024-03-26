v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -140 70 -100 {
lab=GND}
N 70 -100 280 -100 {
lab=GND}
N 280 -200 280 -100 {
lab=GND}
N 280 -350 280 -260 {
lab=#net1}
N 70 -350 280 -350 {
lab=#net1}
N 70 -350 70 -200 {
lab=#net1}
N 170 -140 170 -100 {
lab=GND}
N 170 -230 240 -230 {
lab=#net2}
N 170 -230 170 -200 {
lab=#net2}
N 280 -230 370 -230 {
lab=GND}
N 370 -230 370 -100 {
lab=GND}
N 280 -100 370 -100 {
lab=GND}
N 70 -100 70 -60 {
lab=GND}
C {sky130_fd_pr/corner.sym} 50 -560 0 0 {name=CORNER only_toplevel=false corner=tt}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -230 0 0 {name=M1
W=W
L=L
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
C {devices/vsource.sym} 70 -170 0 0 {name=vd value=2 savecurrent=false}
C {devices/vsource.sym} 170 -170 0 0 {name=vg value=3.3 savecurrent=false}
C {devices/gnd.sym} 70 -60 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 430 -1040 0 0 {name=NGSPICE only_toplevel=false value="* ngspice commands
.param W=1
.param L=0.5
.options savecurrents
.dc vg 100m 3.3 10m
.control
* gm / id characterization
  set plot_idn = ' '
  set plot_gmid = ' '
  set plot_gds = ' '
  set plot_avo = ' '
  set plot_title = 'nfet normalized characteristics'
  set idn_file = charac_nfet_idn.ps
  set gmid_file = charac_nfet_gmid.ps
  set vdsat_file = charac_nfet_vdsat.ps
  set gds_file = charac_nfet_gds.ps
  set avo_file = charac_nfet_avo.ps
  foreach l_act 0.5 1 2 4 8 12 16 20
    alterparam L = $l_act
    reset
    save all
    save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]
    save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
    save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[w]
    save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[l]
    echo l = $l_act
    run
    remzerovec
    let idn = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id] / ( @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[w] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[l] )
    let gmid = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    let gds = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
    let avo = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
    set plot_idn = ( $plot_idn \{$curplot\}.idn )
    set plot_gmid = ( $plot_gmid \{$curplot\}.gmid vs \{$curplot\}.idn )
    set plot_gds = ( $plot_gds \{$curplot\}.gds vs \{$curplot\}.idn )
    set plot_avo = ( $plot_avo \{$curplot\}.avo vs \{$curplot\}.idn )
  end
  set nolegend
  hardcopy $idn_file $plot_idn ylog ylimit 1e-12 1e-3 xlabel 'vgs' ylabel 'id*' title $plot_title
  hardcopy $gmid_file $plot_gmid xlog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gm / Id' title $plot_title
  hardcopy $gds_file $plot_gds loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gds' title $plot_title
  hardcopy $avo_file $plot_avo loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'avo' title $plot_title
  quit
.endc
"}
