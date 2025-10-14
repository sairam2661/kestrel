module {
  func.func @fold_log_exp(%arg0: tensor<?x1xf32>) -> tensor<?x1xf32> {
    %0 = tosa.exp %arg0 : (tensor<?x1xf32>) -> tensor<?x1xf32>
    %1 = tosa.log %0 : (tensor<?x1xf32>) -> tensor<?x1xf32>
    return %1 : tensor<?x1xf32>
  }
}

