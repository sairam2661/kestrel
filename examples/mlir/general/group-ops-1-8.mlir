"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i32, StorageBuffer>) -> i32, sym_name = "subgroup_block_read_intel"}> ({
  ^bb0(%arg0: !spirv.ptr<i32, StorageBuffer>):
    %0 = "spirv.INTEL.SubgroupBlockRead"(%arg0) : (!spirv.ptr<i32, StorageBuffer>) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

