"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?xf32>, memref<4xi64>) -> memref<?x?x12x32xf32>, sym_name = "memref.reshape.dynamic.dim"}> ({
  ^bb0(%arg0: memref<?x?x?xf32>, %arg1: memref<4xi64>):
    %0 = "memref.reshape"(%arg0, %arg1) : (memref<?x?x?xf32>, memref<4xi64>) -> memref<?x?x12x32xf32>
    "func.return"(%0) : (memref<?x?x12x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

