module {
  func.func @typeFitsType() {
    %0 = "testd.any"() : () -> !testd.parametric<i32>
    return
  }
}

