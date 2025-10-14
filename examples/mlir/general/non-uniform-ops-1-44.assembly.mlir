module {
  func.func @group_non_uniform_bitwise_or(%arg0: i32) -> i32 {
    %0 = spirv.GroupNonUniformBitwiseOr <Workgroup> <Reduce> %arg0 : i32 -> i32
    return %0 : i32
  }
}

