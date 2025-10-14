module {
  omp.critical.declare @mutex hint(contended, speculative)
  func.func @critical_declare() {
    omp.critical(@mutex) {
      omp.terminator
    }
    return
  }
}

