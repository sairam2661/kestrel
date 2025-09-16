"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "group_non_uniform_rotate_khr"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "spirv.GroupNonUniformRotateKHR"(%arg0, %arg1) <{execution_scope = #spirv.scope<Subgroup>}> : (f32, i32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

