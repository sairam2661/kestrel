"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<?xf32>, sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call_non_memref_result"}> ({
    %0 = "func.call"() <{callee = @callee}> : () -> memref<?xf32>
    "test.sink"(%0) : (memref<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

