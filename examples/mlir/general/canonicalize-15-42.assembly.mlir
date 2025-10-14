module {
  func.func @replace_if_with_cond3(%arg0: i1, %arg1: i64) -> (i32, i64) {
    %0:2 = scf.if %arg0 -> (i32, i64) {
      %1 = "test.get_some_value"() : () -> i32
      scf.yield %1, %arg1 : i32, i64
    } else {
      %1 = "test.get_some_value"() : () -> i32
      scf.yield %1, %arg1 : i32, i64
    }
    return %0#0, %0#1 : i32, i64
  }
}

