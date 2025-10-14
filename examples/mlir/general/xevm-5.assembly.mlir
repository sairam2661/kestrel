module {
  func.func @prefetch(%arg0: !llvm.ptr<1>) {
    xevm.prefetch %arg0 <{cache_control = #xevm.load_cache_control<L1uc_L2uc_L3uc>}> : (!llvm.ptr<1>)
    return
  }
}

