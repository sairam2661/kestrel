module {
  func.func @main() -> (i1, i1) {
    %true = arith.constant true
    %true_0 = arith.constant true
    return %true, %true_0 : i1, i1
  }
  module @module {
    %true = arith.constant true
    %true_0 = arith.constant true
    "foo.op"(%true, %true_0) : (i1, i1) -> ()
  }
}

