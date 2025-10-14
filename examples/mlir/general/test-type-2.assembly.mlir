module {
  func.func @failedParametrizedVerifierWrongNumOfArgs() {
    %0 = "testd.any"() : () -> !testd.parametrized<i32>
  }
}

