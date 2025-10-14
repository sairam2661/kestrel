module {
  func.func @succeededDynParamsConstraint() {
    %0 = "testd.dynparams"() : () -> !testd.parametric<i32>
    %1 = "testd.dynparams"() : () -> !testd.parametric<i64>
    return
  }
}

