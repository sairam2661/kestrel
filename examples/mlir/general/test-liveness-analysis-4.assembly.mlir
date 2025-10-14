module {
  func.func @test_region_branch_result_in_different_result_1.c(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: i1) -> tensor<f32> {
    %0 = scf.if %arg2 -> (tensor<f32>) {
      scf.yield %arg0 : tensor<f32>
    } else {
      scf.yield %arg1 : tensor<f32>
    } {tag = "region_branch"}
    return %0 : tensor<f32>
  }
}

