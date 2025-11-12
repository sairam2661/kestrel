"builtin.module"() ({
  "func.func"() <{function_type = (memref<56x32xf32>, memref<56x32xf32>) -> (), sym_name = "static_copy"}> ({
  ^bb0(%arg0: memref<56x32xf32>, %arg1: memref<56x32xf32>):
    "memref.copy"(%arg0, %arg1) : (memref<56x32xf32>, memref<56x32xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

