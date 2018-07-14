transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/DP4.v}
vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/DP1.v}
vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/COUNTER.v}
vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/CLOCK_DIVIDE.v}
vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/AN4.v}
vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/CLOCK.v}

vlog -vlog01compat -work work +incdir+C:/Users/86769/Desktop/CLOCK {C:/Users/86769/Desktop/CLOCK/TEST.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TEST

add wave *
view structure
view signals
run -all
