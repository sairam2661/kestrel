module {
  gpu.module @test_module {
    gpu.func @test_const_printf() {
      gpu.printf "Hello, world\0A"
      gpu.return
    }
    gpu.func @test_printf(%arg0: i32) {
      gpu.printf "Hello: %d\0A", %arg0 : i32
      gpu.return
    }
  }
}

