"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "fold_sub_zero_rhs_i32"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.sub"(%arg0, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%1) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

