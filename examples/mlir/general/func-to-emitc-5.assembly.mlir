module {
  func.func private @return_i32(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
  func.func @call(%arg0: i32) -> i32 {
    %0 = call @return_i32(%arg0) : (i32) -> i32
    return %0 : i32
  }
}

