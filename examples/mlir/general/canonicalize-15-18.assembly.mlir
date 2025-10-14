module {
  func.func @replace_true_if() {
    %true = arith.constant true
    scf.if %true {
      "test.op"() : () -> ()
    }
    return
  }
}

