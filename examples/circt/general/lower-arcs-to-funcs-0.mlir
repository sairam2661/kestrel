#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/lower-arcs-to-funcs-0.mlir":11:48)
"builtin.module"() ({
  "arc.define"() <{function_type = () -> (), sym_name = "EmptyArc"}> ({
    "arc.output"() : () -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i32) -> i32, sym_name = "callTest"}> ({
  ^bb0(%arg2: i32):
    %1 = "arc.call"(%arg2) <{arc = @sub1}> : (i32) -> i32
    "arc.output"(%1) : (i32) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i32, output out0 : i32>, parameters = [], result_locs = [#loc], sym_name = "callInModuleTest"}> ({
  ^bb0(%arg1: i32):
    %0 = "arc.call"(%arg1) <{arc = @sub1}> : (i32) -> i32
    "hw.output"(%0) : (i32) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i32) -> i32, sym_name = "sub1"}> ({
  ^bb0(%arg0: i32):
    "arc.output"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

