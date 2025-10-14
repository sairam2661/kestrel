module {
  func.func @test_table_dynamic(%arg0: tensor<4x?xi16>, %arg1: tensor<513xi16>) {
    %0 = tosa.table %arg0, %arg1 : (tensor<4x?xi16>, tensor<513xi16>) -> tensor<?x?xi16>
    return
  }
}

