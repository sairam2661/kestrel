"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "group_non_uniform_fmax_reduce"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.GroupNonUniformFMax"(%arg0) <{execution_scope = #spirv.scope<Workgroup>, group_operation = #spirv.group_operation<Reduce>}> : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

