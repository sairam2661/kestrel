"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "fold_mul_shift"}> ({
    %0 = "tosa.const"() <{values = dense<-23661> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<-33022> : tensor<i32>}> : () -> tensor<i32>
    %2 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.mul"(%0, %1, %2) : (tensor<i32>, tensor<i32>, tensor<1xi8>) -> tensor<i32>
    "func.return"(%3) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

