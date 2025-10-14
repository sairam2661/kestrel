module {
  func.func @assert_true() {
    %true = arith.constant true
    cf.assert %true, "Computer says no"
    return
  }
}

