module {
  func.func @dynamic_dims_are_equal(%arg0: tensor<?xf32>) {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?xf32>
    %dim_0 = tensor.dim %arg0, %c0 : tensor<?xf32>
    "test.compare"(%dim, %dim_0) <{cmp = "EQ"}> : (index, index) -> ()
    return
  }
}

