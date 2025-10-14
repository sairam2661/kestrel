module {
  func.func @failedParametrizedVerifierWrongArgument() {
    %0 = "testd.any"() : () -> !testd.parametrized<i32, i1>
  }
}

