module {
  func.func @byref(%arg0: !test.smpla {llvm.byref = !test.smpla}) -> !test.smpla {
    return %arg0 : !test.smpla
  }
}

