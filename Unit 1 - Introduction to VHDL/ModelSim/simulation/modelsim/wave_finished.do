view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog -range 3 0 /truth_table_1/d 
wave create -pattern none -portmode output -language vlog /truth_table_1/y 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 3 0 -starttime 0ns -endtime 1600ns Edit:/truth_table_1/d 
WaveCollapseAll -1
wave clipboard restore
