module {
  func.func @test_unknown_dynamically_legal() {
    "foo.unknown_op"() {test.dynamically_legal} : () -> ()
    "foo.unknown_op"() : () -> ()
    "test.return"() : () -> ()
  }
}

