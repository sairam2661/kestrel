"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "no_fold_mul_result_exceeds_i32"}> ({
    %0 = "tosa.const"() <{values = dense<23661> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<330222> : tensor<i32>}> : () -> tensor<i32>
    %2 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.mul"(%0, %1, %2) : (tensor<i32>, tensor<i32>, tensor<1xi8>) -> tensor<i32>
    "func.return"(%3) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

