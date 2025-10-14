module {
  func.func @while_dont_crash_nested(%arg0: tensor<i32>) -> tensor<*xi32> {
    %0 = tosa.add %arg0, %arg0 : (tensor<i32>, tensor<i32>) -> tensor<*xi32>
    %1 = tosa.while_loop (%arg1 = %0) : (tensor<*xi32>) -> tensor<*xi32> {
      %2 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %3 = tosa.greater_equal %2, %arg1 : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
      tosa.yield %3 : tensor<*xi1>
    } do {
    ^bb0(%arg1: tensor<*xi32>):
      %2 = tosa.while_loop (%arg2 = %arg1) : (tensor<*xi32>) -> tensor<*xi32> {
        %3 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
        %4 = tosa.greater_equal %3, %arg2 : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
        tosa.yield %4 : tensor<*xi1>
      } do {
      ^bb0(%arg2: tensor<*xi32>):
        %3 = tosa.add %arg2, %arg2 : (tensor<*xi32>, tensor<*xi32>) -> tensor<*xi32>
        "use"(%3) : (tensor<*xi32>) -> ()
        tosa.yield %3 : tensor<*xi32>
      }
      tosa.yield %2 : tensor<*xi32>
    }
    return %1 : tensor<*xi32>
  }
}

