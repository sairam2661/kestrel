"builtin.module"() ({
  "func.func"() <{function_type = () -> (memref<1xf32>, memref<2xf32>), sym_name = "multiple_results"}> ({
    %0:2 = "test.source"() : () -> (memref<1xf32>, memref<2xf32>)
    "func.return"(%0#0, %0#1) : (memref<1xf32>, memref<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

