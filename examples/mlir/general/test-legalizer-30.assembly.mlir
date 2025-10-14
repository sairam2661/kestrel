module {
  func.func @convert_detached_signature() {
    "test.detached_signature_conversion"() ({
    ^bb0(%arg0: i64):
      "test.return"() : () -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }
}

