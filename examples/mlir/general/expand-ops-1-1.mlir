"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xf32>, memref<3xi32>) -> memref<?x?x8xf32>, sym_name = "memref_reshape"}> ({
  ^bb0(%arg0: memref<*xf32>, %arg1: memref<3xi32>):
    %0 = "memref.reshape"(%arg0, %arg1) : (memref<*xf32>, memref<3xi32>) -> memref<?x?x8xf32>
    "func.return"(%0) : (memref<?x?x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

