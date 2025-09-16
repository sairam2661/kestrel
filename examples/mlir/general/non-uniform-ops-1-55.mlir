"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "group_non_uniform_rotate_khr"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "spirv.Constant"() <{value = 4 : i32}> : () -> i32
    %1 = "spirv.GroupNonUniformRotateKHR"(%arg0, %arg1, %0) <{execution_scope = #spirv.scope<Workgroup>}> : (f32, i32, i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

