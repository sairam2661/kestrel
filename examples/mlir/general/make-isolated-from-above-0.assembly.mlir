module {
  func.func @make_isolated_from_above_single_block(%arg0: index, %arg1: index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = tensor.empty(%arg0, %arg1) : tensor<?x?xf32>
    %dim = tensor.dim %0, %c0 : tensor<?x?xf32>
    %dim_0 = tensor.dim %0, %c1 : tensor<?x?xf32>
    "test.one_region_with_operands_op"() ({
      "foo.yield"(%c0, %c1, %dim, %dim_0) : (index, index, index, index) -> ()
    }) : () -> ()
    return
  }
}

