module {
  func.func @fold_exp_log(%arg0: tensor<?x1xf32>) -> tensor<?x1xf32> {
    %0 = tosa.log %arg0 : (tensor<?x1xf32>) -> tensor<?x1xf32>
    %1 = tosa.exp %0 : (tensor<?x1xf32>) -> tensor<?x1xf32>
    return %1 : tensor<?x1xf32>
  }
}

