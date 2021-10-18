onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {RGB input}
add wave -noupdate /read_bmp_tb/r_in
add wave -noupdate /read_bmp_tb/g_in
add wave -noupdate /read_bmp_tb/b_in
add wave -noupdate -divider {RGB output}
add wave -noupdate /read_bmp_tb/b_out
add wave -noupdate /read_bmp_tb/g_out
add wave -noupdate /read_bmp_tb/r_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {80 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {1 us}
