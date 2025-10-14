module {
  func.func @test_signature_conversion_undo() {
    "test.signature_conversion_undo"() ({
    ^bb0(%arg0: f32):
      "test.type_consumer"(%arg0) : (f32) -> ()
      "test.return"(%arg0) : (f32) -> ()
    }) : () -> ()
    return
  }
}

