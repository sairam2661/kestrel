module {
  spirv.module @spirv.sym Logical GLSL450 {
    spirv.func @bar() "None" {
      spirv.Return
    }
    spirv.EntryPoint "GLCompute" @bar
    spirv.ExecutionMode @bar "LocalSize", 1, 1, 1
  }
}

