module {
  func.func @test_invariants_in_graph_region() {
    test.single_no_terminator_op : {
      test.graph_loop  {
        %0 = arith.addi %c5_i32, %1 : i32
        %1 = arith.addi %c5_i32, %c5_i32 : i32
        %c5_i32 = arith.constant 5 : i32
        test.region_yield %0 : i32
      } : () -> ()
    }
    return
  }
}

