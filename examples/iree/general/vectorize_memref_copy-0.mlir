"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xf32>, memref<2x2xf32>) -> (), sym_name = "memref_copy"}> ({
  ^bb0(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>):
    "memref.copy"(%arg0, %arg1) : (memref<2x2xf32>, memref<2x2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

