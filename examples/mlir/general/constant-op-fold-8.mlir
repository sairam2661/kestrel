"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "fold_div_one_rhs_i32"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.intdiv"(%arg0, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%1) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

