module {
  func.func @failedSingletonVerifier() {
    %0 = "testd.any"() : () -> !testd.singleton<i32>
  }
}

