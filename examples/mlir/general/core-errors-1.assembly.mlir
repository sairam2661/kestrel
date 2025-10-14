module {
  smt.solver() : () -> () {
    smt.check sat {
      %true = smt.constant true
    } unknown {
    } unsat {
    }
  }
}

