module {
  spirv.func @callee() "None" {
    spirv.Return
  }
  func.func @caller() {
    spirv.FunctionCall @callee() : () -> ()
    spirv.Return
  }
}

