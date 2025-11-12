"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x?xf32>, memref<42x?xf32>) -> memref<42x?xf32>, sym_name = "memref_add_mixed_to_dynamic"}> ({
  ^bb0(%arg0: memref<42x?xf32>, %arg1: memref<42x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<42x?xf32>) -> memref<?x?xf32>
    %1 = "memref.cast"(%arg1) : (memref<42x?xf32>) -> memref<?x?xf32>
    %2 = "arith.addf"(%0, %1) : (memref<?x?xf32>, memref<?x?xf32>) -> memref<?x?xf32>
    "func.return"(%2) : (memref<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()