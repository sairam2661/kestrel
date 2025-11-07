"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>, memref<?xi64>) -> (memref<?xf32>, memref<?xi64>), sym_name = "two_return_values"}> ({
  ^bb0(%arg0: memref<?xf32>, %arg1: memref<?xi64>):
    "func.return"(%arg0, %arg1) : (memref<?xf32>, memref<?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

