module {
  func.func @attrDoesntFitType() {
    %0 = "testd.any"() : () -> !testd.parametric<"foo">
    return
  }
}

