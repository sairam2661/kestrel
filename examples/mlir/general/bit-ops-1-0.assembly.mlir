module {
  func.func @bitcount(%arg0: i32) -> i32 {
    %0 = spirv.BitCount %arg0 : i32
    spirv.ReturnValue %0 : i32
  }
}

