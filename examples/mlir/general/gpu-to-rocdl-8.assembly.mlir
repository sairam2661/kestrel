module {
  gpu.module @test_module {
    func.func @gpu_cbrt(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
      %0 = math.cbrt %arg0 : f16
      %1 = math.cbrt %arg1 : f32
      %2 = math.cbrt %arg2 : f64
      return %0, %1, %2 : f16, f32, f64
    }
  }
}

