module {
  func.func @test_reduce_binary(%arg0: tensor<2x3x?x?xi1>) {
    %0 = tosa.reduce_all %arg0 {axis = 0 : i32} : (tensor<2x3x?x?xi1>) -> tensor<?x?x?x?xi1>
    %1 = tosa.reduce_all %arg0 {axis = 1 : i32} : (tensor<2x3x?x?xi1>) -> tensor<?x?x?x?xi1>
    %2 = tosa.reduce_all %arg0 {axis = 2 : i32} : (tensor<2x3x?x?xi1>) -> tensor<?x?x?x?xi1>
    %3 = tosa.reduce_all %arg0 {axis = 3 : i32} : (tensor<2x3x?x?xi1>) -> tensor<?x?x?x?xi1>
    %4 = tosa.reduce_any %arg0 {axis = 0 : i32} : (tensor<2x3x?x?xi1>) -> tensor<?x?x?x?xi1>
    return
  }
}

