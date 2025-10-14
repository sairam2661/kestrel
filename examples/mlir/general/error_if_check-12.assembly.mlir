module {
  func.func @test_i8_table_size(%arg0: tensor<2x64xi8>, %arg1: tensor<513xi8>) -> tensor<2x64xi8> {
    %0 = tosa.table %arg0, %arg1 : (tensor<2x64xi8>, tensor<513xi8>) -> tensor<2x64xi8>
    return %0 : tensor<2x64xi8>
  }
}

