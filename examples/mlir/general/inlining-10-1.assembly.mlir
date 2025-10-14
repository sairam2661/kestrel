module {
  spirv.module Logical GLSL450 {
    spirv.func @callee() -> i32 "None" {
      %cst42_i32 = spirv.Constant 42 : i32
      spirv.ReturnValue %cst42_i32 : i32
    }
    spirv.func @calling_single_block_retval_func() -> i32 "None" {
      %0 = spirv.FunctionCall @callee() : () -> i32
      spirv.ReturnValue %0 : i32
    }
  }
}

