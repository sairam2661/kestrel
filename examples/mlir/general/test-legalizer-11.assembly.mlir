module {
  func.func @up_to_date_replacement(%arg0: i8) -> i8 {
    %0 = "test.rewrite"(%arg0) : (i8) -> i8
    %1 = "test.rewrite"(%0) : (i8) -> i8
    return %1 : i8
  }
}

