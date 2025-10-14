module {
  func.func @fixpoint(%arg0: i32) -> i32 {
    %0 = "test.use"(%arg0) ({
      %1 = "test.use2"(%arg0) ({
        "test.yield2"(%arg0) : (i32) -> ()
      }) : (i32) -> i32
      "test.yield"(%1) : (i32) -> ()
    }) : (i32) -> i32
    return %0 : i32
  }
}

