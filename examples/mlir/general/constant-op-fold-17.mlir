"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "fold_mul_one_lhs_i32"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<64> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<6> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.mul"(%0, %arg0, %1) : (tensor<i32>, tensor<i32>, tensor<1xi8>) -> tensor<i32>
    "func.return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

