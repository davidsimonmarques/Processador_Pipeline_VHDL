onerror {quit -f}
vlib work
vlog -work work Processador_Pipeline.vo
vlog -work work Processador_Pipeline.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.adder4_vlg_vec_tst
vcd file -direction Processador_Pipeline.msim.vcd
vcd add -internal adder4_vlg_vec_tst/*
vcd add -internal adder4_vlg_vec_tst/i1/*
add wave /*
run -all
