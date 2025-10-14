module {
  func.func @test_table(%arg0: tensor<4x5xi8>, %arg1: tensor<513xi8>) {
    %0 = tosa.table %arg0, %arg1 : (tensor<4x5xi8>, tensor<513xi8>) -> tensor<?x?xi8>
    return
  }
}

