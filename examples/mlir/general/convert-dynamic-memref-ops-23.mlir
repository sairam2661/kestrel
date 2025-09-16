"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x?xf32>, index) -> index, sym_name = "memref_dim_with_dyn_index"}> ({
  ^bb0(%arg0: memref<3x?xf32>, %arg1: index):
    %0 = "memref.dim"(%arg0, %arg1) : (memref<3x?xf32>, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

