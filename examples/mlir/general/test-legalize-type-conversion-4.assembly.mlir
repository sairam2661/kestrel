module {
  func.func @test_transitive_use_materialization() {
    %0 = "test.another_type_producer"() : () -> f32
    "foo.return"(%0) : (f32) -> ()
  }
}

