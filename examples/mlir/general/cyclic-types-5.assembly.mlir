module {
  func.func @type1_two_references(%arg0: !testd.type1<!testd.type2<!testd.type1<i32>>>) {
    return
  }
}

