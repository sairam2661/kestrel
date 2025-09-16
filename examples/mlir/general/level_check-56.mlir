"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "test_const_rank_valid"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

