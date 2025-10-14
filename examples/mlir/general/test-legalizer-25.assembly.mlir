module {
  func.func private @callee() -> (f32, i24)
  func.func @caller() {
    %0:2 = call @callee() : () -> (f32, i24)
    "test.some_user"(%0#0, %0#1) : (f32, i24) -> ()
    "test.return"() : () -> ()
  }
}

