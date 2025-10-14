module {
  func.func @scf_for_result_infer_dynamic_init_big_step(%arg0: index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c10 = arith.constant 10 : index
    %0 = scf.for %arg1 = %c0 to %c10 step %c2 iter_args(%arg2 = %arg0) -> (index) {
      %3 = "test.some_use"() : () -> i1
      %4 = scf.if %3 -> (index) {
        %5 = arith.addi %arg2, %c1 : index
        scf.yield %5 : index
      } else {
        scf.yield %arg2 : index
      }
      scf.yield %4 : index
    }
    %1 = arith.addi %arg0, %c5 : index
    %2 = arith.addi %arg0, %c4 : index
    "test.compare"(%0, %1) <{cmp = "LE"}> : (index, index) -> ()
    "test.compare"(%0, %2) <{cmp = "LE"}> : (index, index) -> ()
    return
  }
}

