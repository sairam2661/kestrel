"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?xf32>, memref<?x?x?xf32>) -> (), sym_name = "no_compute"}> ({
  ^bb0(%arg0: memref<?x?x?xf32>, %arg1: memref<?x?x?xf32>):
    %0 = "util.optimization_barrier"(%arg0) : (memref<?x?x?xf32>) -> memref<?x?x?xf32>
    %1 = "util.optimization_barrier"(%arg1) : (memref<?x?x?xf32>) -> memref<?x?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

