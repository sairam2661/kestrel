module {
  func.func @f1() {
    return
  }
  func.func @f2() {
    return
  }
  func.func @f3() {
    call @f2() : () -> ()
    call @f2() : () -> ()
    call @f5() : () -> ()
    call @f7() : () -> ()
    call @f5() : () -> ()
    call @f5() : () -> ()
    return
  }
  func.func @f4() {
    call @f3() : () -> ()
    call @f3() : () -> ()
    return
  }
  func.func @f5() {
    call @f7() : () -> ()
    call @f7() : () -> ()
    call @f7() : () -> ()
    call @f7() : () -> ()
    call @f1() : () -> ()
    call @f1() : () -> ()
    call @f7() : () -> ()
    call @f7() : () -> ()
    call @f7() : () -> ()
    call @f7() : () -> ()
    return
  }
  func.func @f6() {
    return
  }
  func.func @f7() {
    return
  }
}

