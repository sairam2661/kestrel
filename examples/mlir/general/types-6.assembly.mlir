module {
  func.func @complex_f64_tensor_success() {
    %0 = "test.complex_f64_tensor"() : () -> tensor<complex<f64>>
    return
  }
}

