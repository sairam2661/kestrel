module {
  func.func @test_andi_not_fold_rhs(%arg0: index) -> index {
    %c-1 = arith.constant -1 : index
    %0 = arith.xori %arg0, %c-1 : index
    %1 = arith.andi %arg0, %0 : index
    return %1 : index
  }
  func.func @test_andi_not_fold_lhs(%arg0: index) -> index {
    %c-1 = arith.constant -1 : index
    %0 = arith.xori %arg0, %c-1 : index
    %1 = arith.andi %0, %arg0 : index
    return %1 : index
  }
}

