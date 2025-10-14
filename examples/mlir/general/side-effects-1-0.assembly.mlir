module {
  func.func @test_side_effects(%arg0: memref<2xi32>) -> memref<2xi32> {
    %0 = bufferization.clone %arg0 : memref<2xi32> to memref<2xi32>
    return %0 : memref<2xi32>
  }
}

