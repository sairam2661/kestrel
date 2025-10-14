module {
  func.func @cse_single_block_ops_identical_bodies(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>, %arg2: f32, %arg3: i1) -> (tensor<?x?xf32>, tensor<?x?xf32>) {
    %0 = test.cse_of_single_block_op inputs(%arg0, %arg1) {
    ^bb0(%arg4: f32, %arg5: f32):
      %2 = arith.divf %arg4, %arg5 : f32
      %3 = arith.remf %arg4, %arg2 : f32
      %4 = arith.select %arg3, %2, %3 : f32
      test.region_yield %4 : f32
    } : tensor<?x?xf32>, tensor<?x?xf32> -> tensor<?x?xf32>
    %1 = test.cse_of_single_block_op inputs(%arg0, %arg1) {
    ^bb0(%arg4: f32, %arg5: f32):
      %2 = arith.divf %arg4, %arg5 : f32
      %3 = arith.remf %arg4, %arg2 : f32
      %4 = arith.select %arg3, %2, %3 : f32
      test.region_yield %4 : f32
    } : tensor<?x?xf32>, tensor<?x?xf32> -> tensor<?x?xf32>
    return %0, %1 : tensor<?x?xf32>, tensor<?x?xf32>
  }
}

