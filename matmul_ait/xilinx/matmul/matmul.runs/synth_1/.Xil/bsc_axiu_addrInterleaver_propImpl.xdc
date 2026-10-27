set_property SRC_FILE_INFO {cfile:/home/crazi/Documents/Ompss/matmul280/matmul/matmul_ait/xilinx/board/constraints/create_pblocks.xdc rfile:../../../../board/constraints/create_pblocks.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:/home/crazi/Documents/Ompss/matmul280/matmul/matmul_ait/xilinx/board/constraints/board_static.xdc rfile:../../../../board/constraints/board_static.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/home/crazi/Documents/Ompss/matmul280/matmul/matmul_ait/xilinx/board/constraints/ports.xdc rfile:../../../../board/constraints/ports.xdc id:3} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_pblock slr0_pblock
resize_pblock [get_pblocks slr0_pblock] -add {SLR0}
set_property IS_SOFT TRUE [get_pblocks slr0_pblock]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_pblock slr1_pblock
resize_pblock [get_pblocks slr1_pblock] -add {SLR1}
set_property IS_SOFT TRUE [get_pblocks slr1_pblock]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_pblock slr2_pblock
resize_pblock [get_pblocks slr2_pblock] -add {SLR2}
set_property IS_SOFT TRUE [get_pblocks slr2_pblock]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr1_pblock] [get_cells -hierarchical Hardware_Runtime]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr0_pblock] [get_cells -hierarchical bridge_to_host]
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr0_pblock] [get_cells -hierarchical -regexp {.*master_Inter(_[0-9]*)*}]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr0_pblock] [get_cells -hierarchical { bitinfo bitInfo_BRAM_Ctrl managed_reset }]
set_property src_info {type:XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr0_pblock] [get_cells -hierarchical -regexp .*/bridge_to_host/memory/DDR_0]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr1_pblock] [get_cells -hierarchical -regexp .*/bridge_to_host/memory/DDR_1]
set_property src_info {type:XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks slr1_pblock] [get_cells -hierarchical -regexp {.*slave_Inter(_[0-9]*)*}]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
create_pblock qdma_pcie
resize_pblock [get_pblocks qdma_pcie] -add {CLOCKREGION_X7Y0:CLOCKREGION_X7Y3}
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks qdma_pcie] [get_cells -hierarchical -filter NAME =~ */QDMA/QDMA/inst/pcie4c_ip_i]
set_property src_info {type:XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BJ44       [ get_ports  {sysclk0_clk_n} ]  ;# Bank  65 VCCO - VCC1V2 Net "SYSCLK0_N"   - IO_L12N_T1U_N11_GC_A09_D25_65
set_property src_info {type:XDC file:3 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVDS       [ get_ports  {sysclk0_clk_n} ]  ;# Bank  65 VCCO - VCC1V2 Net "SYSCLK0_N"   - IO_L12N_T1U_N11_GC_A09_D25_65
set_property src_info {type:XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BJ43       [ get_ports  {sysclk0_clk_p} ]  ;# Bank  65 VCCO - VCC1V2 Net "SYSCLK0_P"   - IO_L12P_T1U_N10_GC_A08_D24_65
set_property src_info {type:XDC file:3 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVDS       [ get_ports  {sysclk0_clk_p} ]  ;# Bank  65 VCCO - VCC1V2 Net "SYSCLK0_P"   - IO_L12P_T1U_N10_GC_A08_D24_65
set_property src_info {type:XDC file:3 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property DQS_BIAS    TRUE       [ get_ports  {sysclk0_clk_p} ]  ;# Bank  65 VCCO - VCC1V2 Net "SYSCLK0_P"   - IO_L12P_T1U_N10_GC_A08_D24_65
set_property src_info {type:XDC file:3 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BJ6        [ get_ports  {sysclk1_clk_n} ]  ;# Bank  69 VCCO - VCC1V2 Net "SYSCLK1_N"   - IO_L13N_T2L_N1_GC_QBC_69
set_property src_info {type:XDC file:3 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVDS       [ get_ports  {sysclk1_clk_n} ]  ;# Bank  69 VCCO - VCC1V2 Net "SYSCLK1_N"   - IO_L13N_T2L_N1_GC_QBC_69
set_property src_info {type:XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BH6        [ get_ports  {sysclk1_clk_p} ]  ;# Bank  69 VCCO - VCC1V2 Net "SYSCLK1_P"   - IO_L13P_T2L_N0_GC_QBC_69
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVDS       [ get_ports  {sysclk1_clk_p} ]  ;# Bank  69 VCCO - VCC1V2 Net "SYSCLK1_P"   - IO_L13P_T2L_N0_GC_QBC_69
set_property src_info {type:XDC file:3 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property DQS_BIAS    TRUE       [ get_ports  {sysclk1_clk_p} ]  ;# Bank  69 VCCO - VCC1V2 Net "SYSCLK1_P"   - IO_L13P_T2L_N0_GC_QBC_69
set_property src_info {type:XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D32        [ get_ports {HBM_CATTRIP} ]     ;# Bank  75 VCCO - VCC1V8                   - IO_L17P_T2U_N8_AD10P_75
set_property src_info {type:XDC file:3 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS18   [ get_ports {HBM_CATTRIP} ]     ;# Bank  75 VCCO - VCC1V8                   - IO_L17P_T2U_N8_AD10P_75
set_property src_info {type:XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PULLDOWN    TRUE       [ get_ports {HBM_CATTRIP} ]     ;# Bank  75 VCCO - VCC1V8                   - IO_L17P_T2U_N8_AD10P_75
