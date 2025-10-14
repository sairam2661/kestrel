module {
  func.func @one_reference(%arg0: !testd.self_referencing<!testd.self_referencing<i32>>) {
    return
  }
}

