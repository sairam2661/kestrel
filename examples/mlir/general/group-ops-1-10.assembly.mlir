module {
  func.func @subgroup_block_write_intel(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) {
    spirv.INTEL.SubgroupBlockWrite %arg0, %arg1 : i32
    return
  }
}

