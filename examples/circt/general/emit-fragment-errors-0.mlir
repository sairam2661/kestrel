#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/emit-fragment-errors-0.mlir":2:41)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in : i32, output out : i32>, parameters = [], result_locs = [#loc], sym_name = "SomeModule"}> ({
  ^bb0(%arg0: i32):
    "hw.output"(%arg0) : (i32) -> ()
  }) {emit.fragments = [@DoesNotExist]} : () -> ()
}) : () -> ()

