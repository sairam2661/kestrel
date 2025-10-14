module {
  gpu.module @test_module {
    func.func @gpu_tan(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
      %0 = math.tan %arg0 : f16
      %1 = math.tan %arg1 : f32
      %2 = math.tan %arg2 : f64
      return %0, %1, %2 : f16, f32, f64
    }
  }
}

