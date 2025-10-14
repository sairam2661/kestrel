module {
  gpu.module @test_module {
    func.func @gpu_index_comp(%arg0: index) -> index {
      %0 = arith.addi %arg0, %arg0 : index
      return %0 : index
    }
  }
}

