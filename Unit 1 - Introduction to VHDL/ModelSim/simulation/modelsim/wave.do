onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /truth_table_1/d
add wave -noupdate /truth_table_1/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1730 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog -range 3 0 /truth_table_1/d 
wave create -pattern none -portmode output -language vlog /truth_table_1/y 
WaveCollapseAll -1
wave clipboard restore
