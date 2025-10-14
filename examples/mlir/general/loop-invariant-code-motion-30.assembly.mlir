module {
  func.func @speculate_tensor_dim_known_rank_known_dim_inbounds() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c22 = arith.constant 22 : index
    %0 = tensor.empty(%c22, %c22) : tensor<?x?xi1>
    scf.for %arg0 = %c0 to %c22 step %c1 {
      %dim = tensor.dim %0, %c1 : tensor<?x?xi1>
    }
    return
  }
}

