"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xi26>, sym_name = "test_lower_barrett_reduce", sym_visibility = "public"}> ({
    %0 = "arith.constant"() <{value = dense<[29498763, -8111104, 17, 7681]> : tensor<4xi26>}> : () -> tensor<4xi26>
    %1 = "mod_arith.barrett_reduce"(%0) <{modulus = 7681 : i64}> : (tensor<4xi26>) -> tensor<4xi26>
    "func.return"(%1) : (tensor<4xi26>) -> ()
  }) : () -> ()
}) : () -> ()

