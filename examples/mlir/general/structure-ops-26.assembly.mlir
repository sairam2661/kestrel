module {
  spirv.module Logical GLSL450 {
    spirv.func @do_nothing() "None" {
      spirv.Return
    }
    spirv.EntryPoint "GLCompute" @do_nothing
    spirv.ExecutionMode @do_nothing "ContractionOff"
  }
  spirv.module Logical GLSL450 {
    spirv.func @do_nothing() "None" {
      spirv.Return
    }
    spirv.EntryPoint "GLCompute" @do_nothing
    spirv.ExecutionMode @do_nothing "LocalSizeHint", 3, 4, 5
  }
}

