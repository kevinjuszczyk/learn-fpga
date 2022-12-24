transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +define+BENCH +define+SIM +define+PASSTHROUGH_PLL +define+BOARD_FREQ=10 +define+CPU_FREQ=10 +incdir+C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/BOARDS/de10nano {C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/BOARDS/de10nano/DE10_Nano_golden_top.v}
vlog -vlog01compat -work work +define+BENCH +define+SIM +define+PASSTHROUGH_PLL +define+BOARD_FREQ=10 +define+CPU_FREQ=10 +incdir+/users/kmj/documents/github/learn-fpga/femtorv/rtl/pll {/users/kmj/documents/github/learn-fpga/femtorv/rtl/pll/femtopll.v}
#vlog -vlog01compat -work work +define+BENCH +define+SIM +define+PASSTHROUGH_PLL +define+BOARD_FREQ=10 +define+CPU_FREQ=10 +incdir+C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV {C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV/step5.v}
vlog -vlog01compat -work work +define+BENCH +define+SIM +define+PASSTHROUGH_PLL +define+BOARD_FREQ=10 +define+CPU_FREQ=10 +incdir+C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV/{$1}.v

vlog -vlog01compat -work work +define+BENCH +define+SIM +define+PASSTHROUGH_PLL +define+BOARD_FREQ=10 +define+CPU_FREQ=10 +incdir+C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/BOARDS/de10nano/../../TUTORIALS/FROM_BLINKER_TO_RISCV {C:/Users/kmj/Documents/GitHub/learn-fpga/FemtoRV/BOARDS/de10nano/../../TUTORIALS/FROM_BLINKER_TO_RISCV/bench_iverilog.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  bench 

add wave *
view structure
view signals
run -all
