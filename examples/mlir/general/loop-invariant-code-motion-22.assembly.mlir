module {
  func.func @test_invariant_nested_loop() {
    %c5_i32 = arith.constant 5 : i32
    test.graph_loop  {
      %0 = arith.addi %c5_i32, %c5_i32 : i32
      %1 = arith.addi %0, %c5_i32 : i32
      test.graph_loop  {
      ^bb0(%arg0: i32):
        %2 = arith.subi %arg0, %arg0 : i32
        test.region_yield %2 : i32
      } : () -> ()
      test.region_yield %1 : i32
    } : () -> ()
    return
  }
}

