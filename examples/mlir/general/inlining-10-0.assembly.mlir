module {
  spirv.module Logical GLSL450 {
    spirv.func @callee() "None" {
      spirv.Return
    }
    spirv.func @calling_single_block_ret_func() "None" {
      spirv.FunctionCall @callee() : () -> ()
      spirv.Return
    }
  }
}

