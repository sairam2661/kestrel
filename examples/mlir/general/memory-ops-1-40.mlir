"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "variable_init_normal_constant"}> ({
    %0 = "spirv.Constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %1 = "spirv.Variable"(%0) <{storage_class = #spirv.storage_class<Function>}> : (f32) -> !spirv.ptr<f32, Function>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

