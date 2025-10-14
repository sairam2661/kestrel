module {
  func.func @group_non_uniform_logical_and(%arg0: i1) -> i1 {
    %0 = spirv.GroupNonUniformLogicalAnd <Workgroup> <Reduce> %arg0 : i1 -> i1
    return %0 : i1
  }
}

