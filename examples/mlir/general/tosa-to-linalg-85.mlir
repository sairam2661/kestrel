"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> (), sym_name = "test_0d_input"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg0, %0) : (tensor<i32>, tensor<i32>, tensor<1xi8>) -> tensor<i32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %4 = "tosa.negate"(%arg0, %2, %3) : (tensor<i32>, tensor<1xi32>, tensor<1xi32>) -> tensor<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

