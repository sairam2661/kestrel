"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "group_non_uniform_elect"}> ({
    %0 = "spirv.GroupNonUniformElect"() <{execution_scope = #spirv.scope<Workgroup>}> : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

