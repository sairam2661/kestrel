module {
  %0 = smt.solver() : () -> i1 {
    %true = arith.constant true
    smt.yield %true : i1
  }
}

