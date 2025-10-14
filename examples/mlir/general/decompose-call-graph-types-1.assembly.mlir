module {
  func.func @identity_1_to_1_no_materializations(%arg0: tuple<i1>) -> tuple<i1> {
    return %arg0 : tuple<i1>
  }
}

