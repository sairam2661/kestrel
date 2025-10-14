module {
  func.func private @return_void() {
    return
  }
  func.func @call() {
    call @return_void() : () -> ()
    return
  }
}

