module {
  func.func @image_query_size(%arg0: !spirv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>) {
    %0 = spirv.ImageQuerySize %arg0 : !spirv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown> -> i32
    spirv.Return
  }
}

