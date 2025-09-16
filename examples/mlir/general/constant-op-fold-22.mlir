"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<10xi32>, sym_name = "fold_sub_splat_i32"}> ({
    %0 = "tosa.const"() <{values = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "tosa.const"() <{values = dense<2> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "tosa.sub"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%2) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()

