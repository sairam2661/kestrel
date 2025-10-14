module {
  func.func @wrong_parameter(%arg0: !testd.self_referencing<i64>) {
    return
  }
}

