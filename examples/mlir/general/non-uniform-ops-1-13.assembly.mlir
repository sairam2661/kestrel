module {
  func.func @group_non_uniform_elect() -> i1 {
    %0 = spirv.GroupNonUniformElect <Workgroup> : i1
    return %0 : i1
  }
}

