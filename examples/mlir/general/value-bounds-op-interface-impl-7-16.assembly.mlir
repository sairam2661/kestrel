module {
  func.func @dynamic_dims_are_maybe_equal_1(%arg0: tensor<?xf32>) {
    %c0 = arith.constant 0 : index
    %c5 = arith.constant 5 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?xf32>
    "test.compare"(%dim, %c5) <{cmp = "EQ"}> : (index, index) -> ()
    return
  }
}

