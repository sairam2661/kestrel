"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "test_identity_rank_valid"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.identity"(%arg0) : (tensor<i32>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

