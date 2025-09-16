"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?x?x?xf32>) -> memref<?x?xf32>, sym_name = "compose_collapse_of_collapse"}> ({
  ^bb0(%arg0: memref<?x?x?x?x?xf32>):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2], [3, 4]]}> : (memref<?x?x?x?x?xf32>) -> memref<?x?x?xf32>
    %1 = "memref.collapse_shape"(%0) <{reassociation = [[0, 1], [2]]}> : (memref<?x?x?xf32>) -> memref<?x?xf32>
    "func.return"(%1) : (memref<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

