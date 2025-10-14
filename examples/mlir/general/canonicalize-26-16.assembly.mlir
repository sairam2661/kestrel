module {
  func.func @deduplicate_scalar_constant() -> (i32, i32) {
    %cst42_i32 = spirv.Constant 42 : i32
    %cst42_i32_0 = spirv.Constant 42 : i32
    return %cst42_i32, %cst42_i32_0 : i32, i32
  }
}

