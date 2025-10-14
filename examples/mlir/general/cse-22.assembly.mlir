module {
  func.func @failing_issue_59135(%arg0: tensor<2x2xi1>, %arg1: f32, %arg2: tensor<2xi1>) -> (tensor<2xi1>, tensor<2xi1>) {
    %false = arith.constant false
    %true = arith.constant true
    %0 = test.cse_of_single_block_op inputs(%arg2) {
    ^bb0(%arg3: i1):
      %true_0 = arith.constant true
      test.region_yield %true_0 : i1
    } : tensor<2xi1> -> tensor<2xi1>
    %1 = test.cse_of_single_block_op inputs(%arg2) {
    ^bb0(%arg3: i1):
      %true_0 = arith.constant true
      test.region_yield %true_0 : i1
    } : tensor<2xi1> -> tensor<2xi1>
    %2 = arith.maxsi %false, %true : i1
    return %0, %1 : tensor<2xi1>, tensor<2xi1>
  }
}

