"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<*xi32>, sym_name = "while_test"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.add"(%arg0, %arg0) : (tensor<i32>, tensor<i32>) -> tensor<*xi32>
    %1 = "tosa.while_loop"(%0) ({
    ^bb0(%arg2: tensor<*xi32>):
      %4 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %5 = "tosa.greater_equal"(%4, %arg2) : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
      "tosa.yield"(%5) : (tensor<*xi1>) -> ()
    }, {
    ^bb0(%arg1: tensor<*xi32>):
      %2 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %3 = "tosa.add"(%arg1, %2) : (tensor<*xi32>, tensor<i32>) -> tensor<*xi32>
      "tosa.yield"(%3) : (tensor<*xi32>) -> ()
    }) : (tensor<*xi32>) -> tensor<*xi32>
    "func.return"(%1) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

