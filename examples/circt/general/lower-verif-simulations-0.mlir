"builtin.module"() ({
  "verif.simulation"() <{parameters = {}, sym_name = "Foo"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1):
    %0 = "func.call"() <{callee = @generateDone}> : () -> i1
    %1 = "func.call"() <{callee = @generateSuccess}> : () -> i1
    "verif.yield"(%0, %1) : (i1, i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i1, sym_name = "generateDone", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> i1, sym_name = "generateSuccess", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

