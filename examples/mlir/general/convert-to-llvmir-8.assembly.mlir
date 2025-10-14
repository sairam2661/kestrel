module {
  func.func @threadprivate(%arg0: !llvm.ptr) {
    %0 = omp.threadprivate %arg0 : !llvm.ptr -> !llvm.ptr
    return
  }
}

