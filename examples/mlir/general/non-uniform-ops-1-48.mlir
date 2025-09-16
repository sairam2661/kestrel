"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "group_non_uniform_logical_and"}> ({
  ^bb0(%arg0: i1):
    %0 = "spirv.GroupNonUniformLogicalAnd"(%arg0) <{execution_scope = #spirv.scope<Workgroup>, group_operation = #spirv.group_operation<Reduce>}> : (i1) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

