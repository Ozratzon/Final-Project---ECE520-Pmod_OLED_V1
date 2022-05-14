# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/ozratzon/test_software/OLED_Design_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/ozratzon/test_software/OLED_Design_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {OLED_Design_wrapper}\
-hw {/home/ozratzon/test/OLED_Design_wrapper.xsa}\
-out {/home/ozratzon/test_software}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {OLED_Design_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate -domains zynq_fsbl 
platform generate
