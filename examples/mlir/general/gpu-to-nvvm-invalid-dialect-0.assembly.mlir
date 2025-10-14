module {
  gpu.module @test_module_1 {
    func.func @test(%arg0: index) -> index {
      %0 = test.increment %arg0 : index
      return %0 : index
    }
  }
}

