module {
  func.func @byval(%arg0: !test.smpla {llvm.byval = !test.smpla}) -> !test.smpla {
    return %arg0 : !test.smpla
  }
}

