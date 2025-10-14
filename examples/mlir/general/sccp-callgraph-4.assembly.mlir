module {
  func.func private @callable(%arg0: i32) -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    return %c1_i32, %arg0 : i32, i32
  }
  func.func @non_call_users() -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %0:2 = call @callable(%c1_i32) : (i32) -> (i32, i32)
    return %0#0, %0#1 : i32, i32
  }
  "live.user"() {uses = [@callable]} : () -> ()
}

