"builtin.module"() ({
  "tt.func"() <{function_type = (f32) -> tensor<8x2xf32>, sym_name = "fold_broadcast_constant_pattern"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<8x1xf32>}> : () -> tensor<8x1xf32>
    %1 = "tt.broadcast"(%0) : (tensor<8x1xf32>) -> tensor<8x2xf32>
    "tt.return"(%1) : (tensor<8x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

