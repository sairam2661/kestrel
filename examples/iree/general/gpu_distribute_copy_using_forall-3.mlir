"builtin.module"() ({
  "func.func"() <{function_type = (memref<56x32xf16>, memref<56x32xf16>) -> (), sym_name = "f16_copy"}> ({
  ^bb0(%arg0: memref<56x32xf16>, %arg1: memref<56x32xf16>):
    "memref.copy"(%arg0, %arg1) : (memref<56x32xf16>, memref<56x32xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

