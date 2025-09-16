"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<*xi32>, sym_name = "while_dont_crash_nested"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.add"(%arg0, %arg0) : (tensor<i32>, tensor<i32>) -> tensor<*xi32>
    %1 = "tosa.while_loop"(%0) ({
    ^bb0(%arg4: tensor<*xi32>):
      %6 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %7 = "tosa.greater_equal"(%6, %arg4) : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
      "tosa.yield"(%7) : (tensor<*xi1>) -> ()
    }, {
    ^bb0(%arg1: tensor<*xi32>):
      %2 = "tosa.while_loop"(%arg1) ({
      ^bb0(%arg3: tensor<*xi32>):
        %4 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
        %5 = "tosa.greater_equal"(%4, %arg3) : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
        "tosa.yield"(%5) : (tensor<*xi1>) -> ()
      }, {
      ^bb0(%arg2: tensor<*xi32>):
        %3 = "tosa.add"(%arg2, %arg2) : (tensor<*xi32>, tensor<*xi32>) -> tensor<*xi32>
        "use"(%3) : (tensor<*xi32>) -> ()
        "tosa.yield"(%3) : (tensor<*xi32>) -> ()
      }) : (tensor<*xi32>) -> tensor<*xi32>
      "tosa.yield"(%2) : (tensor<*xi32>) -> ()
    }) : (tensor<*xi32>) -> tensor<*xi32>
    "func.return"(%1) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

