"builtin.module"() ({
  "func.func"() <{function_type = (memref<5xi8>) -> memref<5xi8>, sym_name = "collapse_shape_identity_fold"}> ({
  ^bb0(%arg0: memref<5xi8>):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0]]}> : (memref<5xi8>) -> memref<5xi8>
    "func.return"(%0) : (memref<5xi8>) -> ()
  }) : () -> ()
}) : () -> ()

