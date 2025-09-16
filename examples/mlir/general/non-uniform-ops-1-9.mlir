"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "group_non_uniform_broadcast_scalar"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.Constant"() <{value = 1 : i32}> : () -> i32
    %1 = "spirv.GroupNonUniformBroadcast"(%arg0, %0) <{execution_scope = #spirv.scope<Workgroup>}> : (f32, i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

