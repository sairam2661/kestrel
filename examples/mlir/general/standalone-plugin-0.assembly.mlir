module {
  func.func @bar() {
    return
  }
  func.func @standalone_types(%arg0: !standalone.custom<"10">) {
    return
  }
}

