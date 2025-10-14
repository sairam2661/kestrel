module {
  gpu.module @test_module {
    func.func @gpu_exp2(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
      %0 = math.exp2 %arg0 : f16
      %1 = math.exp2 %arg1 : f32
      %2 = math.exp2 %1 : f32
      %3 = math.exp2 %arg2 : f64
      return %0, %2, %3 : f16, f32, f64
    }
  }
}

