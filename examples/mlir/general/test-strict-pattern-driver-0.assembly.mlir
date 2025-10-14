module {
  func.func @test_erase() {
    %0 = "test.arg0"() : () -> i32
    %1 = "test.arg1"() : () -> i32
    %2 = "test.erase_op"(%0, %1) : (i32, i32) -> i32
    return
  }
}

