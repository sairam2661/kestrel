"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "group_broadcast_scalar"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "spirv.GroupBroadcast"(%arg0, %arg1) <{execution_scope = #spirv.scope<Workgroup>}> : (f32, i32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

