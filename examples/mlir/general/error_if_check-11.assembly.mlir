module {
  func.func @test_i16_table_size(%arg0: tensor<2x64xi16>, %arg1: tensor<256xi16>) -> tensor<2x64xi32> {
    %0 = tosa.table %arg0, %arg1 : (tensor<2x64xi16>, tensor<256xi16>) -> tensor<2x64xi32>
    return %0 : tensor<2x64xi32>
  }
}

