module {
  gpu.module @test_module {
    func.func @gpu_fmod(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
      %0 = arith.remf %arg0, %arg0 : f16
      %1 = arith.remf %arg1, %arg1 : f32
      %2 = arith.remf %arg2, %arg2 : f64
      return %0, %1, %2 : f16, f32, f64
    }
  }
}

