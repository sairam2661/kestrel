"builtin.module"() ({
  "func.func"() <{function_type = () -> (memref<1xf32>, memref<2xf32>), sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call_multiple_result"}> ({
    %0:2 = "func.call"() <{callee = @callee}> : () -> (memref<1xf32>, memref<2xf32>)
    "test.sink"(%0#0, %0#1) : (memref<1xf32>, memref<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

