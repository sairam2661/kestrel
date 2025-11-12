"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "convert_return"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    "stablehlo.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

