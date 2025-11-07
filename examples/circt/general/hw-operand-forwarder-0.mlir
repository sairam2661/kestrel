#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/hw-operand-forwarder-0.mlir":2:50)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, input arg1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "Foo"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "comb.and"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "comb.and"(%1, %0) : (i32, i32) -> i32
    "hw.output"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

