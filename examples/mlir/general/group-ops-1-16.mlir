"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "group_smin"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.GroupSMin"(%arg0) <{execution_scope = #spirv.scope<Workgroup>, group_operation = #spirv.group_operation<Reduce>}> : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

