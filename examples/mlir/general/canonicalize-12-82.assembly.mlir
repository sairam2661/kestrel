module {
  func.func @fold_assume_alignment_chain(%arg0: memref<128xf32>) -> memref<128xf32> {
    %assume_align = memref.assume_alignment %arg0, 16 : memref<128xf32>
    %assume_align_0 = memref.assume_alignment %assume_align, 16 : memref<128xf32>
    return %assume_align_0 : memref<128xf32>
  }
}

