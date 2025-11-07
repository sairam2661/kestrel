"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, memref<?xf32>) -> (memref<?xf32>, memref<?xf32>, memref<?xf32>), sym_name = "multiple_return_values"}> ({
  ^bb0(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: memref<?xf32>):
    "func.return"(%arg0, %arg1, %arg2) : (memref<?xf32>, memref<?xf32>, memref<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

