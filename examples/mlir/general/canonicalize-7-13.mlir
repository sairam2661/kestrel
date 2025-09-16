"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3x?x4xf32>) -> (), sym_name = "self_copy"}> ({
  ^bb0(%arg0: memref<2x3x?x4xf32>):
    "memref.copy"(%arg0, %arg0) : (memref<2x3x?x4xf32>, memref<2x3x?x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

