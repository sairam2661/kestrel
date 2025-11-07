#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-0.mlir":4:49)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-0.mlir":14:93)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-0.mlir":14:108)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-0.mlir":22:102)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-0.mlir":22:117)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32, input in1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "comb"}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %4 = "comb.add"(%arg8, %arg9) : (i32, i32) -> i32
    %5 = "comb.icmp"(%4, %arg8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "verif.assert"(%5) : (i1) -> ()
    "hw.output"(%4) : (i32) -> ()
  }) {initial_values = [], num_regs = 0 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, input reg_state : i32, output out : i32, output reg_input : i32>, parameters = [], result_locs = [#loc1, #loc2], sym_name = "seq"}> ({
  ^bb0(%arg4: !seq.clock, %arg5: i32, %arg6: i32, %arg7: i32):
    %2 = "comb.add"(%arg5, %arg6) : (i32, i32) -> i32
    %3 = "comb.icmp"(%2, %arg5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "verif.assert"(%3) : (i1) -> ()
    "hw.output"(%arg7, %2) : (i32, i32) -> ()
  }) {initial_values = [unit], num_regs = 1 : i32} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input in0 : i32, input in1 : i32, input reg_state : i32, output out : i32, output reg_input : i32>, parameters = [], result_locs = [#loc3, #loc4], sym_name = "nondominance"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "comb.icmp"(%1, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %1 = "comb.add"(%arg1, %arg2) : (i32, i32) -> i32
    "verif.assert"(%0) : (i1) -> ()
    "hw.output"(%arg3, %1) : (i32, i32) -> ()
  }) {initial_values = [unit], num_regs = 1 : i32} : () -> ()
}) : () -> ()

