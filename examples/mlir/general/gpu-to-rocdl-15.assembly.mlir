module {
  gpu.module @test_module {
    func.func @gpu_log(%arg0: f16, %arg1: f64) -> (f16, f64) {
      %0 = math.log %arg0 : f16
      %1 = math.log %arg1 : f64
      return %0, %1 : f16, f64
    }
  }
}

