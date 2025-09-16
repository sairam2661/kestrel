"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xf32>, memref<?xi32>) -> index, sym_name = "dim_of_memref_reshape_i32"}> ({
  ^bb0(%arg0: memref<*xf32>, %arg1: memref<?xi32>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "memref.reshape"(%arg0, %arg1) : (memref<*xf32>, memref<?xi32>) -> memref<*xf32>
    %2 = "memref.dim"(%1, %0) : (memref<*xf32>, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

