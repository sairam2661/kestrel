module {
  func.func @direct_forward(%arg0: i16) -> i16 {
    %0 = "test.type_changer"(%arg0) : (i16) -> i16
    return %0 : i16
  }
}

