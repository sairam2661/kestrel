module {
  func.func @dim_all_positive(%arg0: tensor<?xf32>, %arg1: index) {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %arg1 : tensor<?xf32>
    "test.compare"(%dim, %c0) <{cmp = "GE"}> : (index, index) -> ()
    return
  }
}

