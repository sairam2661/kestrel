module {
  func.func @group_non_uniform_smax_reduce(%arg0: i32) -> i32 {
    %0 = spirv.GroupNonUniformSMax <Workgroup> <Reduce> %arg0 : i32 -> i32
    return %0 : i32
  }
}

