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
lab=vg}
N 170 -230 170 -200 {
lab=vg}
N 280 -230 370 -230 {
lab=GND}
N 370 -230 370 -100 {
lab=GND}
N 280 -100 370 -100 {
lab=GND}
N 70 -100 70 -60 {
lab=GND}
C {sky130_fd_pr/corner.sym} 50 -560 0 0 {name=CORNER only_toplevel=false corner=ff}
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
C {devices/vsource.sym} 70 -170 0 0 {name=vd value=1.1 savecurrent=false}
C {devices/vsource.sym} 170 -170 0 0 {name=vg value=3.3 savecurrent=false}
C {devices/gnd.sym} 70 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 170 -230 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/code_shown.sym} 450 -1700 0 0 {name=NGSPICE only_toplevel=false value="* ngspice commands
.param W=5
.param L=0.5
.options savecurrents
.dc vg 100m 3.3 10m
.control
  set device = 'nfet'
  set corner = 'ff'
* === short channel
  set lengths = '0.5 0.6 0.8 1 1.5'
  set channel = 'sc'
* name files
  set vgs_file = \{$device\}_vgs_\{$channel\}_\{$corner\}.ps
  set gm_file = \{$device\}_gm_\{$channel\}_\{$corner\}.ps
  set gds_file = \{$device\}_gds_\{$channel\}_\{$corner\}.ps
  set gain_file = \{$device\}_gain_\{$channel\}_\{$corner\}.ps
* initialize plots
  set plot_vgs = ' '
  set plot_gm = ' '
  set plot_gds = ' '
  set plot_gain = ' '
  set plot_title = '\{$device\} CORNER = \{$corner\} L = \{$lengths\}'
* loop through channel lengths and run DC analysis
  foreach l_act 0.5 0.6 0.8 1 1.5
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
* compute parameters
    let idn = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id] / ( @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[w] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[l] )
    let gm = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    let gds = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    let gain = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
* update plots
    set plot_vgs = ( $plot_vgs vg vs \{$curplot\}.idn )
    set plot_gm = ( $plot_gm \{$curplot\}.gm vs \{$curplot\}.idn )
    set plot_gds = ( $plot_gds \{$curplot\}.gds vs \{$curplot\}.idn )
    set plot_gain = ( $plot_gain \{$curplot\}.gain vs \{$curplot\}.idn )
  end
* export graphics
  set nolegend
  hardcopy $vgs_file $plot_vgs xlog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'vgs' title $plot_title
  hardcopy $gm_file $plot_gm xlog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gm / Id' title $plot_title
  hardcopy $gds_file $plot_gds loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gds / Id' title $plot_title
  hardcopy $gain_file $plot_gain loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gain' title $plot_title

* === long channel
  set lengths = '2 3 4 5 6 7 8'
  set channel = 'lc'
* name files
  set vgs_file = \{$device\}_vgs_\{$channel\}_\{$corner\}.ps
  set gm_file = \{$device\}_gm_\{$channel\}_\{$corner\}.ps
  set gds_file = \{$device\}_gds_\{$channel\}_\{$corner\}.ps
  set gain_file = \{$device\}_gain_\{$channel\}_\{$corner\}.ps
* initialize plots
  set plot_vgs = ' '
  set plot_gm = ' '
  set plot_gds = ' '
  set plot_gain = ' '
  set plot_title = '\{$device\} CORNER = \{$corner\} L = \{$lengths\}'
* loop through channel lengths and run DC analysis
  foreach l_act 2 3 4 5 6 7 8
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
* compute parameters
    let idn = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id] / ( @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[w] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[l] )
    let gm = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    let gds = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[id]
    let gain = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm] / @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
* update plots
    set plot_vgs = ( $plot_vgs vg vs \{$curplot\}.idn )
    set plot_gm = ( $plot_gm \{$curplot\}.gm vs \{$curplot\}.idn )
    set plot_gds = ( $plot_gds \{$curplot\}.gds vs \{$curplot\}.idn )
    set plot_gain = ( $plot_gain \{$curplot\}.gain vs \{$curplot\}.idn )
  end
* export graphics
  set nolegend
  hardcopy $vgs_file $plot_vgs xlog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'vgs' title $plot_title
  hardcopy $gm_file $plot_gm xlog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gm / Id' title $plot_title
  hardcopy $gds_file $plot_gds loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gds / Id' title $plot_title
  hardcopy $gain_file $plot_gain loglog xlimit 1e-12 1e-3 xlabel 'id*' ylabel 'gain' title $plot_title
  quit
.endc
"}
