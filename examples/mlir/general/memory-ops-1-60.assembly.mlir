module {
  func.func @ptr_access_chain1(%arg0: !spirv.ptr<f32, CrossWorkgroup>, %arg1: i64) {
    %0 = spirv.PtrAccessChain %arg0[%arg1] : !spirv.ptr<f32, CrossWorkgroup>, i64 -> !spirv.ptr<f32, CrossWorkgroup>
    return
  }
}

