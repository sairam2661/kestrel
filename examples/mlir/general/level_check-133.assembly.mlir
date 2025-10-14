module {
  func.func @test_while_loop(%arg0: tensor<1x1x1x1x1x1x1xf32>, %arg1: tensor<i32>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1:2 = tosa.while_loop (%arg2 = %0, %arg3 = %arg0) : (tensor<i32>, tensor<1x1x1x1x1x1x1xf32>) -> (tensor<i32>, tensor<1x1x1x1x1x1x1xf32>) {
      %2 = tosa.greater_equal %arg2, %arg1 : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %3 = tosa.logical_not %2 : (tensor<i1>) -> tensor<i1>
      tosa.yield %3 : tensor<i1>
    } do {
    ^bb0(%arg2: tensor<i32>, %arg3: tensor<1x1x1x1x1x1x1xf32>):
      %2 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %3 = tosa.add %arg2, %2 : (tensor<i32>, tensor<i32>) -> tensor<i32>
      tosa.yield %3, %arg3 : tensor<i32>, tensor<1x1x1x1x1x1x1xf32>
    }
    return
  }
}

