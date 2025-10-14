module {
  func.func @master_block_arg() {
    omp.master {
    ^bb0(%arg0: index, %arg1: index):
      "test.payload"(%arg0, %arg1) : (index, index) -> ()
      omp.terminator
    }
    return
  }
}

