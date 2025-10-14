module {
  func.func @test_transitive_use_invalid_materialization() {
    %0 = "test.another_type_producer"() : () -> f16
    "foo.return"(%0) : (f16) -> ()
  }
}

