module {
  func.func private @callable(%arg0: i32) -> i32 {
    "unknown.return"(%arg0) : (i32) -> ()
  }
  func.func @conflicting_constant(%arg0: i32) -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %0 = call @callable(%c1_i32) : (i32) -> i32
    %1 = call @callable(%arg0) : (i32) -> i32
    return %0, %1 : i32, i32
  }
}

