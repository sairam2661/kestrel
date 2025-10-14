module {
  module @llvm_unreachable {
    func.func private @fn_with_llvm_unreachable(%arg0: tensor<4x4xf32>) -> tensor<4x4xi1> {
      llvm.unreachable
    }
    func.func private @main(%arg0: tensor<4x4xf32>) {
      %0 = call @fn_with_llvm_unreachable(%arg0) : (tensor<4x4xf32>) -> tensor<4x4xi1>
      llvm.return
    }
  }
  func.func private @no_block_func_declaration()
}

