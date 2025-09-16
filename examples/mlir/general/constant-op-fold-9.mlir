"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "fold_div_splat_i32"}> ({
    %0 = "tosa.const"() <{values = dense<10> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<-3> : tensor<i32>}> : () -> tensor<i32>
    %2 = "tosa.intdiv"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "func.return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

