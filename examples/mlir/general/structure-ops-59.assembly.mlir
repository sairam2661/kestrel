module {
  spirv.SpecConstant @sc = 5 : i32
  func.func @reference_of() {
    %0 = spirv.mlir.referenceof @sc : i32
    return
  }
}

