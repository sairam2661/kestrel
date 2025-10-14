module {
  func.func @canonicalize_rank_size(%arg0: tensor<1x2x?xf32>) -> !shape.size {
    %0 = shape.shape_of %arg0 : tensor<1x2x?xf32> -> !shape.shape
    %1 = shape.rank %0 : !shape.shape -> !shape.size
    return %1 : !shape.size
  }
}

