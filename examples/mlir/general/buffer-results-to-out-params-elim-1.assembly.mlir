module {
  func.func @return_arg(%arg0: memref<128x256xf32>, %arg1: memref<128x256xf32>) -> memref<128x256xf32> {
    "test.source"(%arg0, %arg1) : (memref<128x256xf32>, memref<128x256xf32>) -> ()
    return %arg0 : memref<128x256xf32>
  }
}

