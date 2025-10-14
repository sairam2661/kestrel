module {
  func.func private @consume(i32)
  func.func @test_scf_if_double_sink(%arg0: i1, %arg1: i32) {
    %0 = arith.addi %arg1, %arg1 : i32
    scf.if %arg0 {
      scf.if %arg0 {
        func.call @consume(%0) : (i32) -> ()
      }
    }
    return
  }
}

