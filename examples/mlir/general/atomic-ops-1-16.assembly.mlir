module {
  func.func @atomic_fadd(%arg0: !spirv.ptr<f32, StorageBuffer>, %arg1: f32) -> f32 {
    %0 = spirv.EXT.AtomicFAdd <Device> <None> %arg0, %arg1 : !spirv.ptr<f32, StorageBuffer>
    return %0 : f32
  }
}

