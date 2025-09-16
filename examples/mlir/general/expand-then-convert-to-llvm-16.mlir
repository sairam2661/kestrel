"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x2x?xf32>) -> memref<1x?xf32>, sym_name = "collapse_shape_dynamic"}> ({
  ^bb0(%arg0: memref<1x2x?xf32>):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0], [1, 2]]}> : (memref<1x2x?xf32>) -> memref<1x?xf32>
    "func.return"(%0) : (memref<1x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

