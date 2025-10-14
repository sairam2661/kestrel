module {
  func.func @test_one_join() {
    "test.foo"() {tag = "a"} : () -> ()
    "test.foo"() {foo = 1 : ui64, tag = "b"} : () -> ()
    return
  }
}

