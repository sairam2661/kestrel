module {
  func.func @no_cse_region_difference_simple(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>) {
    %0 = test.cse_of_single_block_op inputs(%arg0, %arg1) {
    ^bb0(%arg2: f32, %arg3: f32):
      test.region_yield %arg2 : f32
    } : tensor<?x?xf32>, tensor<?x?xf32> -> tensor<?x?xf32>
    %1 = test.cse_of_single_block_op inputs(%arg0, %arg1) {
    ^bb0(%arg2: f32, %arg3: f32):
      test.region_yield %arg3 : f32
    } : tensor<?x?xf32>, tensor<?x?xf32> -> tensor<?x?xf32>
    return %0, %1 : tensor<?x?xf32>, tensor<?x?xf32>
  }
}

