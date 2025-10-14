module {
  func.func @assume_true(%arg0: i1) {
    spirv.KHR.AssumeTrue %arg0
    spirv.Return
  }
}

