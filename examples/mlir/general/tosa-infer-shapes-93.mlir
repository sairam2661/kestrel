"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<*xi32>, sym_name = "while_dont_crash"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.add"(%arg0, %arg0) : (tensor<i32>, tensor<i32>) -> tensor<*xi32>
    %1 = "tosa.while_loop"(%0) ({
    ^bb0(%arg2: tensor<*xi32>):
      %3 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %4 = "tosa.greater_equal"(%3, %arg2) : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
      "tosa.yield"(%4) : (tensor<*xi1>) -> ()
    }, {
    ^bb0(%arg1: tensor<*xi32>):
      %2 = "tosa.add"(%arg1, %arg1) : (tensor<*xi32>, tensor<*xi32>) -> tensor<*xi32>
      "use"(%2) : (tensor<*xi32>) -> ()
      "tosa.yield"(%2) : (tensor<*xi32>) -> ()
    }) : (tensor<*xi32>) -> tensor<*xi32>
    "func.return"(%1) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

