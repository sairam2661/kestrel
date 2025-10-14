module {
  func.func @while_cmp_rhs(%arg0: i32) {
    %0 = scf.while : () -> i32 {
      %1 = "test.val"() : () -> i32
      %2 = arith.cmpi ne, %arg0, %1 : i32
      scf.condition(%2) %1 : i32
    } do {
    ^bb0(%arg1: i32):
      %1 = arith.cmpi ne, %arg0, %arg1 : i32
      %2 = arith.cmpi eq, %arg0, %arg1 : i32
      "test.use"(%1, %2, %arg1) : (i1, i1, i32) -> ()
      scf.yield
    }
    return
  }
}

