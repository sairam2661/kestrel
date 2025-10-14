module {
  func.func @selection_with_control() {
    spirv.mlir.selection control(Flatten) {
    }
    return
  }
}

