module {
  smt.solver() : () -> () {
    smt.check sat {
    } unknown {
    } unsat {
      %true = smt.constant true
    }
  }
}

