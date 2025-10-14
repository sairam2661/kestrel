module {
  func.func @scf_for_result_infer() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %0 = scf.for %arg0 = %c0 to %c10 step %c1 iter_args(%arg1 = %c0) -> (index) {
      %1 = "test.some_use"() : () -> i1
      %2 = scf.if %1 -> (index) {
        %3 = arith.addi %arg1, %c1 : index
        scf.yield %3 : index
      } else {
        scf.yield %arg1 : index
      }
      scf.yield %2 : index
    }
    "test.compare"(%0, %c10) <{cmp = "LE"}> : (index, index) -> ()
    return
  }
}

