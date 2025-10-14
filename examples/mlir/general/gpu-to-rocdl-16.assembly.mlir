module {
  gpu.module @test_module {
    func.func @gpu_log1p(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
      %0 = math.log1p %arg0 : f16
      %1 = math.log1p %arg1 : f32
      %2 = math.log1p %arg2 : f64
      return %0, %1, %2 : f16, f32, f64
    }
  }
}

