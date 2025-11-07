#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/fixup-empty-modules-0.mlir":8:38)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "empty1"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in : i1, input in2 : i32>, parameters = [], sym_name = "empty2"}> ({
  ^bb0(%arg1: i1, %arg2: i32):
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input in : i1, output out : i1>, parameters = [], result_locs = [#loc], sym_name = "not_empty"}> ({
  ^bb0(%arg0: i1):
    "hw.output"(%arg0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

