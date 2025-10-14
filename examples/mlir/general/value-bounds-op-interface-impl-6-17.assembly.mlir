module {
  func.func @scf_for_result_infer_dynamic_init(%arg0: index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %0 = scf.for %arg1 = %c0 to %c10 step %c1 iter_args(%arg2 = %arg0) -> (index) {
      %2 = "test.some_use"() : () -> i1
      %3 = scf.if %2 -> (index) {
        %4 = arith.addi %arg2, %c1 : index
        scf.yield %4 : index
      } else {
        scf.yield %arg2 : index
      }
      scf.yield %3 : index
    }
    %1 = arith.addi %arg0, %c10 : index
    "test.compare"(%0, %1) <{cmp = "LE"}> : (index, index) -> ()
    return
  }
}

