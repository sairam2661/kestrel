"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>, f32, index) -> (), sym_name = "atomic_rmw"}> ({
  ^bb0(%arg4: memref<10xf32>, %arg5: f32, %arg6: index):
    %3 = "memref.atomic_rmw"(%arg5, %arg4, %arg6) <{kind = 0 : i64}> : (f32, memref<10xf32>, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<1x2xf32>, index, index) -> (), sym_name = "generic_atomic_rmw"}> ({
  ^bb0(%arg0: memref<1x2xf32>, %arg1: index, %arg2: index):
    %0 = "memref.generic_atomic_rmw"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: f32):
      %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
      %2 = "arith.addf"(%1, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "memref.atomic_yield"(%2) : (f32) -> ()
    }) {index_attr = 8 : index} : (memref<1x2xf32>, index, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

