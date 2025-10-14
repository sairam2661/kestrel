module {
  smt.solver() : () -> () {
    %true = smt.constant true
    %0 = smt.check sat {
      smt.yield %true : !smt.bool
    } unknown {
      smt.yield %true : !smt.bool
    } unsat {
      smt.yield %true : !smt.bool
    } -> !smt.bool
  }
}

