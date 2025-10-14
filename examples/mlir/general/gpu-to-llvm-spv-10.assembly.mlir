module {
  gpu.module @subgroup_operations {
    func.func @gpu_subgroup() {
      %0 = gpu.subgroup_id : index
      %1 = gpu.lane_id
      %2 = gpu.num_subgroups : index
      %3 = gpu.subgroup_size : index
      return
    }
  }
}

