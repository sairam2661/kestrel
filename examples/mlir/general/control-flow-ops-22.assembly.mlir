module {
  func.func @loop_with_control() {
    spirv.mlir.loop control(Unroll) {
    }
    return
  }
}

