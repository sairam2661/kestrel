"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<1xf32>, sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call_basic"}> ({
    %0 = "func.call"() <{callee = @callee}> : () -> memref<1xf32>
    "test.sink"(%0) : (memref<1xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

