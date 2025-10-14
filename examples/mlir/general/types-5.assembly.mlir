module {
  func.func @complex_f64_success() {
    %0 = "test.complex_f64"() : () -> complex<f64>
    return
  }
}

