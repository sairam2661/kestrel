module {
  func.func @blackhole() {
    %0 = "test.blackhole_producer"() : () -> i32
    "test.blackhole"(%0) : (i32) -> ()
    return
  }
}

