"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x4x?x6x7xi32>) -> memref<?x?x42xi32>, sym_name = "simplify_collapse"}> ({
  ^bb0(%arg0: memref<?x?x4x?x6x7xi32>):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0], [1, 2, 3], [4, 5]]}> : (memref<?x?x4x?x6x7xi32>) -> memref<?x?x42xi32>
    "func.return"(%0) : (memref<?x?x42xi32>) -> ()
  }) : () -> ()
}) : () -> ()

