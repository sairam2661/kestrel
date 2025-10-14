module {
  func.func @arith_select(%arg0: i1, %arg1: tensor<8xi32>, %arg2: tensor<8xi32>) {
    %0 = arith.select %arg0, %arg1, %arg2 : tensor<8xi32>
    return
  }
}

