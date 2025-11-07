#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/pattern-registration-1-0.mlir":4:33)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in : i1, output out : i1>, parameters = [], result_locs = [#loc], sym_name = "Foo"}> ({
  ^bb0(%arg0: i1):
    "hw.output"(%arg0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

