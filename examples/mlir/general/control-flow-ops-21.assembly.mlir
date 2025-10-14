module {
  func.func @empty_region() {
    spirv.mlir.loop {
    }
    return
  }
}

