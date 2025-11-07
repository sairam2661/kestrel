#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-errors-7.mlir":2:147)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-errors-7.mlir":2:162)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-to-bmc-errors-7.mlir":2:184)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk0 : !seq.clock, input clk1 : !seq.clock, input in0 : i32, input in1 : i32, input reg0_state : i32, input reg1_state : i32, output out : i32, output reg0_input : i32, output reg1_input : i32>, parameters = [], result_locs = [#loc, #loc1, #loc2], sym_name = "testModule"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: !seq.clock, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32):
    %0 = "comb.add"(%arg4, %arg5) : (i32, i32) -> i32
    %1 = "comb.icmp"(%0, %arg2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "verif.assert"(%1) : (i1) -> ()
    "hw.output"(%0, %arg2, %arg3) : (i32, i32, i32) -> ()
  }) {initial_values = [unit, unit], num_regs = 2 : i32} : () -> ()
}) : () -> ()

