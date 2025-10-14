module {
  func.func @test_materialize_failure() -> i64 {
    %idx1234 = index.constant 1234
    %0 = index.castu %idx1234 : index to i64
    return %0 : i64
  }
}

