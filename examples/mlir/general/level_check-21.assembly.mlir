module {
  func.func @test_table_rank_invalid(%arg0: tensor<1x1x1x1x1x1x64xi16>, %arg1: tensor<513xi16>) -> tensor<1x1x1x1x1x1x64xi32> {
    %0 = tosa.table %arg0, %arg1 : (tensor<1x1x1x1x1x1x64xi16>, tensor<513xi16>) -> tensor<1x1x1x1x1x1x64xi32>
    return %0 : tensor<1x1x1x1x1x1x64xi32>
  }
}

