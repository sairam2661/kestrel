module {
  func.func @test_always_speculatable_op(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %0 = "test.always_speculatable_op"() : () -> i32
    }
    return
  }
  func.func @test_never_speculatable_op(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %0 = "test.never_speculatable_op"() : () -> i32
    }
    return
  }
  func.func @test_conditionally_speculatable_op_success(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %c5_i32 = arith.constant 5 : i32
      %0 = "test.conditionally_speculatable_op"(%c5_i32) : (i32) -> i32
    }
    return
  }
  func.func @test_conditionally_speculatable_op_failure(%arg0: index, %arg1: index, %arg2: index, %arg3: i32) {
    %c5_i32 = arith.constant 5 : i32
    %0 = arith.addi %arg3, %c5_i32 : i32
    scf.for %arg4 = %arg0 to %arg1 step %arg2 {
      %1 = "test.conditionally_speculatable_op"(%0) : (i32) -> i32
    }
    return
  }
  func.func @test_recursively_speculatable_op_success(%arg0: index, %arg1: index, %arg2: index, %arg3: i32) {
    scf.for %arg4 = %arg0 to %arg1 step %arg2 {
      %0 = "test.recursively_speculatable_op"() ({
        %1 = arith.addi %arg3, %arg3 : i32
        test.region_yield %1 : i32
      }) : () -> i32
    }
    return
  }
  func.func @test_recursively_speculatable_op_failure(%arg0: index, %arg1: index, %arg2: index, %arg3: i32) {
    scf.for %arg4 = %arg0 to %arg1 step %arg2 {
      %0 = "test.recursively_speculatable_op"() ({
        %1 = "test.never_speculatable_op"() : () -> i32
        test.region_yield %1 : i32
      }) : () -> i32
    }
    return
  }
}

