"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "const_test"}> ({
    %0 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

