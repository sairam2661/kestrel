"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "group_non_uniform_any"}> ({
  ^bb0(%arg0: i1):
    %0 = "spirv.GroupNonUniformAny"(%arg0) <{execution_scope = #spirv.scope<Subgroup>}> : (i1) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

