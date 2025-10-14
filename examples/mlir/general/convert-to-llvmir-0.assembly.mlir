module {
  func.func private @foo(index, index)
  func.func @critical_block_arg() {
    omp.critical {
    ^bb0(%arg0: index, %arg1: index):
      func.call @foo(%arg0, %arg1) : (index, index) -> ()
      omp.terminator
    }
    return
  }
}

