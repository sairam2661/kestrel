module {
  smt.solver() : () -> () {
    smt.check sat {
    } unknown {
      %true = smt.constant true
    } unsat {
    }
  }
}

