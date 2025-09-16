"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>, index) -> (), sym_name = "test_atomic_yield"}> ({
  ^bb0(%arg0: memref<10xf32>, %arg1: index):
    %0 = "memref.generic_atomic_rmw"(%arg0, %arg1) ({
    ^bb0(%arg2: f32):
      %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
      "memref.atomic_yield"(%1) : (f32) -> ()
    }) : (memref<10xf32>, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

