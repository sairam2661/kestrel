module {
  func.func @group_non_uniform_any(%arg0: i1) -> i1 {
    %0 = spirv.GroupNonUniformAny <Subgroup> %arg0 : i1
    return %0 : i1
  }
}

