"builtin.module"() ({
  "func.func"() <{function_type = (memref<128x256xf32>, memref<128x256xf32>) -> memref<128x256xf32>, sym_name = "return_arg"}> ({
  ^bb0(%arg0: memref<128x256xf32>, %arg1: memref<128x256xf32>):
    "test.source"(%arg0, %arg1) : (memref<128x256xf32>, memref<128x256xf32>) -> ()
    "func.return"(%arg0) : (memref<128x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

