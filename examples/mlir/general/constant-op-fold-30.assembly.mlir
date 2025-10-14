module {
  func.func @fold_eq_i32(%arg0: tensor<10xi32>) -> tensor<10xi1> {
    %0 = tosa.equal %arg0, %arg0 : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi1>
    return %0 : tensor<10xi1>
  }
}

