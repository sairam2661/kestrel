"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>, memref<?x?xf32>) -> (), sym_name = "dynamic_copy"}> ({
  ^bb0(%arg0: memref<?x?xf32>, %arg1: memref<?x?xf32>):
    "memref.copy"(%arg0, %arg1) : (memref<?x?xf32>, memref<?x?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

