"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i1, sym_name = "group_non_uniform_all_equal"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.GroupNonUniformAllEqual"(%arg0) <{execution_scope = #spirv.scope<Subgroup>}> : (f32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

