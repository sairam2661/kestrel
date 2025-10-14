module {
  func.func @fail_to_convert_region() {
    "test.region"() ({
    ^bb0(%arg0: i64):
      "test.region_builder"() : () -> ()
      "test.valid"() : () -> ()
    }) : () -> ()
    return
  }
}

