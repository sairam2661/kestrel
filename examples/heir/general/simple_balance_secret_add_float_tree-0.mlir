"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<f32>, !secret.secret<f32>, !secret.secret<f32>, !secret.secret<f32>) -> !secret.secret<f32>, sym_name = "simple_balance_secret_add_float_tree"}> ({
  ^bb0(%arg0: !secret.secret<f32>, %arg1: !secret.secret<f32>, %arg2: !secret.secret<f32>, %arg3: !secret.secret<f32>):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32, %arg7: f32):
      %1 = "arith.addf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %2 = "arith.addf"(%1, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %3 = "arith.addf"(%2, %arg7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "secret.yield"(%3) : (f32) -> ()
    }) : (!secret.secret<f32>, !secret.secret<f32>, !secret.secret<f32>, !secret.secret<f32>) -> !secret.secret<f32>
    "func.return"(%0) : (!secret.secret<f32>) -> ()
  }) : () -> ()
}) : () -> ()

