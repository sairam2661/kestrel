module {
  func.func @ptrcasttogeneric1(%arg0: !spirv.ptr<f32, CrossWorkgroup>) {
    %0 = spirv.PtrCastToGeneric %arg0 : !spirv.ptr<f32, CrossWorkgroup> to !spirv.ptr<f32, Generic>
    return
  }
}

