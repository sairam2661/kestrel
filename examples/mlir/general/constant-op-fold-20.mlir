"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "fold_sub_zero_rhs_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "tosa.sub"(%arg0, %0) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

