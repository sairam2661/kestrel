module {
  func.func @dynamic_dims_are_maybe_equal_2(%arg0: tensor<?x?xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?x?xf32>
    %dim_0 = tensor.dim %arg0, %c1 : tensor<?x?xf32>
    "test.compare"(%dim, %dim_0) <{cmp = "EQ"}> : (index, index) -> ()
    return
  }
}

