module {
  gpu.module @test_module {
    "test.symbol_scope"() ({
      func.func @gpu_sin(%arg0: f16, %arg1: f32, %arg2: f64) -> (f16, f32, f64) {
        %0 = math.sin %arg0 : f16
        %1 = math.sin %arg1 : f32
        %2 = math.sin %arg2 : f64
        return %0, %1, %2 : f16, f32, f64
      }
      "test.finish"() : () -> ()
    }) : () -> ()
  }
}

