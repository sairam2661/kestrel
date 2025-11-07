#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/isolate-clocks-error-0.mlir":2:63)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input cond : i1, input arg0 : i32, input arg1 : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "m1"}> ({
  ^bb0(%arg0: i1, %arg1: i32, %arg2: i32):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (i32) -> ()
    }, {
      "scf.yield"(%arg2) : (i32) -> ()
    }) : (i1) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

