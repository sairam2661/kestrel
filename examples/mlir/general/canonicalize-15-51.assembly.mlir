module {
  func.func @test_align_args() -> (i64, f32, i32) {
    %0 = "test.test"() : () -> f32
    %1 = "test.test"() : () -> i32
    %2 = "test.test"() : () -> i64
    %3:3 = scf.while (%arg0 = %0, %arg1 = %1, %arg2 = %2) : (f32, i32, i64) -> (i64, f32, i32) {
      %4 = "test.test"() : () -> i1
      scf.condition(%4) %arg2, %arg0, %arg1 : i64, f32, i32
    } do {
    ^bb0(%arg0: i64, %arg1: f32, %arg2: i32):
      %4 = "test.test"(%arg0) : (i64) -> f32
      %5 = "test.test"(%arg1) : (f32) -> i32
      %6 = "test.test"(%arg2) : (i32) -> i64
      scf.yield %4, %5, %6 : f32, i32, i64
    }
    return %3#0, %3#1, %3#2 : i64, f32, i32
  }
}

