module {
  func.func @replace_if_with_cond2(%arg0: i1) -> (i32, i1) {
    %true = arith.constant true
    %false = arith.constant false
    %0:2 = scf.if %arg0 -> (i32, i1) {
      %1 = "test.get_some_value"() : () -> i32
      scf.yield %1, %false : i32, i1
    } else {
      %1 = "test.get_some_value"() : () -> i32
      scf.yield %1, %true : i32, i1
    }
    return %0#0, %0#1 : i32, i1
  }
}

