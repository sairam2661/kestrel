module {
  func.func @empty_if2(%arg0: i1) {
    scf.if %arg0 {
    } else {
    }
    return
  }
}

