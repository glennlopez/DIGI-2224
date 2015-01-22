transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/Documents/Github Clones/DIGI-2224/Unit 1 - Introduction to VHDL/ModelSim/truth_table_1.vhd}

