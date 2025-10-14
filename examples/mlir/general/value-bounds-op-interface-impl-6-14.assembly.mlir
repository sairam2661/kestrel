module {
  func.func @scf_for_induction_var_upper_bound() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    scf.for %arg0 = %c0 to %c10 step %c4 {
      "test.compare"(%arg0, %c8) <{cmp = "LE"}> : (index, index) -> ()
    }
    scf.for %arg0 = %c2 to %c8 step %c3 {
      "test.compare"(%arg0, %c5) <{cmp = "LE"}> : (index, index) -> ()
    }
    return
  }
}

