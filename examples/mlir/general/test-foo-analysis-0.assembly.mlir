module {
  func.func @test_default_init() {
    "test.foo"() {tag = "a"} : () -> ()
    return
  }
}

