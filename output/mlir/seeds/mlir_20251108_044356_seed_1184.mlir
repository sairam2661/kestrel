"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi64>, sym_name = "mixed_types_with_casts"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<1024xi32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %1 = "tosa.cast"(%0) : (tensor<1024xi32>) -> tensor<1024xi64>
    %2 = "tosa.const"() <{value = dense<42> : tensor<1024xi64>}> : () -> tensor<1024xi64>
    %3 = "tosa.add"(%1, %2) : (tensor<1024xi64>, tensor<1024xi64>) -> tensor<1024xi64>
    "func.return"(%3) : (tensor<1024xi64>) -> ()
  }) : () -> ()
}) : () -> ()