module {
  func.func @f(%arg0: f32) {
    "foo.print"(%arg0) : (f32) -> ()
    return
  }
}

