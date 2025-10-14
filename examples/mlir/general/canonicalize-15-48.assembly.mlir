module {
  func.func @while_duplicated_res() -> (i32, i32) {
    %0:2 = scf.while : () -> (i32, i32) {
      %1 = "test.val"() : () -> i32
      %2 = "test.condition"() : () -> i1
      scf.condition(%2) %1, %1 : i32, i32
    } do {
    ^bb0(%arg0: i32, %arg1: i32):
      "test.use"(%arg0, %arg1) : (i32, i32) -> ()
      scf.yield
    }
    return %0#0, %0#1 : i32, i32
  }
}

