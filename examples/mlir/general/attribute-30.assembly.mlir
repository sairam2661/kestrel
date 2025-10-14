module {
  func.func @allowed_cases_pass() {
    test.op_with_bit_enum <read, write>
    test.op_with_bit_enum <read, execute>
    return
  }
}

