"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi10>) -> tensor<4xi10>, sym_name = "test_lower_barrett_reduce"}> ({
  ^bb0(%arg0: tensor<4xi10>):
    %0 = "mod_arith.barrett_reduce"(%arg0) <{modulus = 17 : i64}> : (tensor<4xi10>) -> tensor<4xi10>
    "func.return"(%0) : (tensor<4xi10>) -> ()
  }) : () -> ()
}) : () -> ()

