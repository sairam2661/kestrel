module {
  func.func @inbounds_ptr_access_chain1(%arg0: !spirv.ptr<f32, CrossWorkgroup>, %arg1: i64) {
    %0 = spirv.InBoundsPtrAccessChain %arg0[%arg1] : !spirv.ptr<f32, CrossWorkgroup>, i64 -> !spirv.ptr<f32, CrossWorkgroup>
    return
  }
}

