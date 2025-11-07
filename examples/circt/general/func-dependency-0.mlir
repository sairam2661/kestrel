#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/func-dependency-0.mlir":2:51)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : i1, input arg1 : i1, output out : i1>, parameters = [], result_locs = [#loc], sym_name = "test"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "hw.constant"() <{value = true}> : () -> i1
    %1 = "hw.constant"() <{value = false}> : () -> i1
    %2 = "comb.mux"(%arg1, %1, %0) : (i1, i1, i1) -> i1
    %3 = "comb.mux"(%arg1, %1, %0) : (i1, i1, i1) -> i1
    %4 = "comb.mux"(%arg0, %2, %3) : (i1, i1, i1) -> i1
    "hw.output"(%4) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

