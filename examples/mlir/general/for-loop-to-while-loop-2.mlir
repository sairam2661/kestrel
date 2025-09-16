"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> f32, sym_name = "for_iter_args"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1:2 = "scf.for"(%arg0, %arg1, %arg2, %0, %0) ({
    ^bb0(%arg3: index, %arg4: f32, %arg5: f32):
      %2 = "arith.addf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%2, %2) : (f32, f32) -> ()
    }) : (index, index, index, f32, f32) -> (f32, f32)
    "func.return"(%1#1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

