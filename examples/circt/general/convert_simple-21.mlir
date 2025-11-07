"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xf32>, f32) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: memref<1xf32>, %arg1: f32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = -1.100000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%1, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %3 = "math.absf"(%2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "memref.store"(%3, %arg0, %0) : (f32, memref<1xf32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

