"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x3x4x1x5xf32>) -> memref<3x4x5xf32>, sym_name = "collapse_shape_static"}> ({
  ^bb0(%arg0: memref<1x3x4x1x5xf32>):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2], [3, 4]]}> : (memref<1x3x4x1x5xf32>) -> memref<3x4x5xf32>
    "func.return"(%0) : (memref<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

