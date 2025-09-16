"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "variable"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

