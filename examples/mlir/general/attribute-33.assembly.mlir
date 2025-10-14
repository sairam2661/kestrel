module {
  func.func @correct_type_pass() {
    "test.float_elements_attr"() <{scalar_f32_attr = dense<5.000000e+00> : tensor<2xf32>, tensor_f64_attr = dense<6.000000e+00> : tensor<4x8xf64>}> : () -> ()
    return
  }
}

