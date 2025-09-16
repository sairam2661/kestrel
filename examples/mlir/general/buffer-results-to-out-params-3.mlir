"builtin.module"() ({
  "func.func"() <{function_type = () -> (i1, memref<1xf32>, i32), sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call_non_memref_result"}> ({
    %0:3 = "func.call"() <{callee = @callee}> : () -> (i1, memref<1xf32>, i32)
    "test.sink"(%0#0, %0#1, %0#2) : (i1, memref<1xf32>, i32) -> ()
  }) : () -> ()
}) : () -> ()

