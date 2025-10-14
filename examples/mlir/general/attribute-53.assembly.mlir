module {
  func.func @correct_type_pass() {
    "test.ranked_int_elements_attr"() <{matrix_i64_attr = dense<6> : tensor<4x8xi64>, vector_i32_attr = dense<5> : tensor<2xi32>}> : () -> ()
    return
  }
}

