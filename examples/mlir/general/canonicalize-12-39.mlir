"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x512x1x1xf32>) -> memref<?x?xf32>, sym_name = "collapse_after_memref_cast_type_change"}> ({
  ^bb0(%arg0: memref<?x512x1x1xf32>):
    %0 = "memref.cast"(%arg0) : (memref<?x512x1x1xf32>) -> memref<?x?x?x?xf32>
    %1 = "memref.collapse_shape"(%0) <{reassociation = [[0], [1, 2, 3]]}> : (memref<?x?x?x?xf32>) -> memref<?x?xf32>
    "func.return"(%1) : (memref<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

