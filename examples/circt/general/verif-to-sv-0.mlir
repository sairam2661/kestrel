#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/verif-to-sv-0.mlir":2:64)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/verif-to-sv-0.mlir":12:63)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : i1, input reset : i1, output out : i1>, parameters = [], result_locs = [#loc], sym_name = "HasBeenResetAsync"}> ({
  ^bb0(%arg2: i1, %arg3: i1):
    %1 = "verif.has_been_reset"(%arg2, %arg3) <{async = true}> : (i1, i1) -> i1
    "hw.output"(%1) : (i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clock : i1, input reset : i1, output out : i1>, parameters = [], result_locs = [#loc1], sym_name = "HasBeenResetSync"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "verif.has_been_reset"(%arg0, %arg1) <{async = false}> : (i1, i1) -> i1
    "hw.output"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

