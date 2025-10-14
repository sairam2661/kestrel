module {
  func.func @image_load() {
    %0 = spirv.Variable : !spirv.ptr<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NoSampler, Rgba8>, Function>
    %1 = spirv.Load "Function" %0 : !spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NoSampler, Rgba8>
    return
  }
}

