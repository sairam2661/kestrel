module {
  func.func @while_dont_crash(%arg0: tensor<i32>) -> tensor<*xi32> {
    %0 = tosa.add %arg0, %arg0 : (tensor<i32>, tensor<i32>) -> tensor<*xi32>
    %1 = tosa.while_loop (%arg1 = %0) : (tensor<*xi32>) -> tensor<*xi32> {
      %2 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %3 = tosa.greater_equal %2, %arg1 : (tensor<i32>, tensor<*xi32>) -> tensor<*xi1>
      tosa.yield %3 : tensor<*xi1>
    } do {
    ^bb0(%arg1: tensor<*xi32>):
      %2 = tosa.add %arg1, %arg1 : (tensor<*xi32>, tensor<*xi32>) -> tensor<*xi32>
      "use"(%2) : (tensor<*xi32>) -> ()
      tosa.yield %2 : tensor<*xi32>
    }
    return %1 : tensor<*xi32>
  }
}

