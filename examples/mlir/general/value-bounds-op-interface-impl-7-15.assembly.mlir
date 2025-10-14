module {
  func.func @dynamic_dims_are_different(%arg0: tensor<?xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?xf32>
    %0 = arith.addi %dim, %c1 : index
    "test.compare"(%dim, %0) <{cmp = "EQ"}> : (index, index) -> ()
    return
  }
}

