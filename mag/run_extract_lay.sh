#! /bin/bash

magic -dnull -noconsole -rcfile $PDK_ROOT/$PDK/libs.tech/magic/sky130A.magicrc << EOF
load sky130_am_ip__ldo_01v8
select top cell
extract path extfiles
extract all
ext2spice lvs
ext2spice -p extfiles -o ../netlist/layout/sky130_am_ip__ldo_01v8.spice
quit -noprompt
EOF
rm -r extfiles
exit 0
