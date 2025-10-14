module {
  func.func @group_non_uniform_all(%arg0: i1) -> i1 {
    %0 = spirv.GroupNonUniformAll <Subgroup> %arg0 : i1
    return %0 : i1
  }
}

