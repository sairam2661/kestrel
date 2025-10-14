module {
  func.func @fail_to_convert_illegal_op_in_region() {
    "test.region_builder"() : () -> ()
    return
  }
}

