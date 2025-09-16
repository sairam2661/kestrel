"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "fold_mul_one_lhs_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.mul"(%0, %arg0, %1) : (tensor<f32>, tensor<f32>, tensor<1xi8>) -> tensor<f32>
    "func.return"(%2) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

