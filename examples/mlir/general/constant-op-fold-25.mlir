"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<10xi1>, tensor<10xi1>), sym_name = "fold_greater_splat_i32"}> ({
    %0 = "tosa.const"() <{values = dense<-10> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "tosa.const"() <{values = dense<8> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "tosa.const"() <{values = dense<-10> : tensor<10xi32>}> : () -> tensor<10xi32>
    %3 = "tosa.const"() <{values = dense<-12> : tensor<10xi32>}> : () -> tensor<10xi32>
    %4 = "tosa.greater"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
    %5 = "tosa.greater"(%2, %3) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
    "func.return"(%4, %5) : (tensor<10xi1>, tensor<10xi1>) -> ()
  }) : () -> ()
}) : () -> ()

