module {
  func.func @while_test(%arg0: tensor<i32>, %arg1: tensor<1xi32>) {
    %0:2 = tosa.while_loop (%arg2 = %arg0, %arg3 = %arg1) : (tensor<i32>, tensor<1xi32>) -> (tensor<i32>, tensor<?xi32>) {
      %1 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %2 = tosa.greater_equal %1, %arg2 : (tensor<i32>, tensor<i32>) -> tensor<i1>
      tosa.yield %2 : tensor<i1>
    } do {
    ^bb0(%arg2: tensor<i32>, %arg3: tensor<?xi32>):
      %1 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %2 = tosa.add %arg2, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %3 = tosa.concat %arg3, %arg3 {axis = 0 : i32} : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
      tosa.yield %2, %3 : tensor<i32>, tensor<?xi32>
    }
    return
  }
}

