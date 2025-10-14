module {
  func.func @empty_if1(%arg0: i1) {
    scf.if %arg0 {
    }
    return
  }
}

