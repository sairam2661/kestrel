module {
  func.func @type1_one_references(%arg0: !testd.type1<!testd.type2<i32>>) {
    return
  }
}

