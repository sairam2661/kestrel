module {
  spirv.module Logical GLSL450 {
    spirv.func @callee() "None" {
      spirv.Kill
    }
    spirv.func @do_not_inline_kill() "None" {
      spirv.FunctionCall @callee() : () -> ()
      spirv.Return
    }
  }
}

