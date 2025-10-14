module {
  func.func @solver_input(%arg0: i1) {
    smt.solver(%arg0) : (i1) -> () {
    ^bb0(%arg1: i1):
    }
    return
  }
}

