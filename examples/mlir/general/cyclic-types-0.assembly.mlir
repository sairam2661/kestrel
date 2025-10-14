module {
  func.func @no_references(%arg0: !testd.self_referencing<i32>) {
    return
  }
}

