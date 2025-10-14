module {
  func.func @map_no_inputs(%arg0: tensor<64xf32>) -> tensor<64xf32> {
    %mapped = linalg.map outs(%arg0 : tensor<64xf32>)
      () {
        %cst = arith.constant 0.000000e+00 : f32
        linalg.yield %cst : f32
      }
    return %mapped : tensor<64xf32>
  }
}

