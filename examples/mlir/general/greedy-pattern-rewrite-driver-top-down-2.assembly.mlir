module {
  func.func @f() {
    %false = arith.constant false
    %0 = scf.if %false -> (i1) {
      scf.yield %false : i1
    } else {
      scf.yield %false : i1
    }
    %1 = arith.select %false, %0, %0 : i1
    return
  }
}

