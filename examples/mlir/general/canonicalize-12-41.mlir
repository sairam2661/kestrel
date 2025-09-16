"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x1x1x?xi64>) -> memref<?x?xi64>, sym_name = "collapse_after_memref_cast_type_change_dynamic"}> ({
  ^bb0(%arg0: memref<1x1x1x?xi64>):
    %0 = "memref.cast"(%arg0) : (memref<1x1x1x?xi64>) -> memref<1x1x?x?xi64>
    %1 = "memref.collapse_shape"(%0) <{reassociation = [[0, 1, 2], [3]]}> : (memref<1x1x?x?xi64>) -> memref<?x?xi64>
    "func.return"(%1) : (memref<?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

