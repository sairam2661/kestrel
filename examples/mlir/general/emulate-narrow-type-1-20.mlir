"builtin.module"() ({
  "func.func"() <{function_type = (memref<32x128xi4, 1>, memref<32x128xi4>) -> (), sym_name = "memref_copy_i4"}> ({
  ^bb0(%arg0: memref<32x128xi4, 1>, %arg1: memref<32x128xi4>):
    "memref.copy"(%arg0, %arg1) : (memref<32x128xi4, 1>, memref<32x128xi4>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

