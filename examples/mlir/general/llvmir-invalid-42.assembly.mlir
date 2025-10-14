module {
  llvm.comdat @__llvm_comdat {
    llvm.comdat_selector @foo any
  }
  llvm.comdat @__llvm_comdat_1 {
    llvm.comdat_selector @foo any
  }
}

