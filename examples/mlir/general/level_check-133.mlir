"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x1x1xf32>, tensor<i32>) -> (), sym_name = "test_while_loop"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x1x1xf32>, %arg1: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1:2 = "tosa.while_loop"(%0, %arg0) ({
    ^bb0(%arg4: tensor<i32>, %arg5: tensor<1x1x1x1x1x1x1xf32>):
      %4 = "tosa.greater_equal"(%arg4, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %5 = "tosa.logical_not"(%4) : (tensor<i1>) -> tensor<i1>
      "tosa.yield"(%5) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg2: tensor<i32>, %arg3: tensor<1x1x1x1x1x1x1xf32>):
      %2 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %3 = "tosa.add"(%arg2, %2) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%3, %arg3) : (tensor<i32>, tensor<1x1x1x1x1x1x1xf32>) -> ()
    }) : (tensor<i32>, tensor<1x1x1x1x1x1x1xf32>) -> (tensor<i32>, tensor<1x1x1x1x1x1x1xf32>)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

