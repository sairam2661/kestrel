module {
  func.func @printf(%arg0: !spirv.ptr<i8, UniformConstant>, %arg1: i32, %arg2: i32) -> i32 {
    %0 = spirv.CL.printf %arg0 %arg1, %arg2 : !spirv.ptr<i8, UniformConstant>, i32, i32 -> i32
    return %0 : i32
  }
}

