module {
  func.func @winograd_output_dyn(%arg0: tensor<6x6x?x?x?x?xf32>, %arg1: tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32> {
    %0 = linalg.winograd_output_transform fmr(F_4_3) ins(%arg0 : tensor<6x6x?x?x?x?xf32>) outs(%arg1 : tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    return %0 : tensor<?x?x?x?xf32>
  }
}

