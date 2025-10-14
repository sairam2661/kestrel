module {
  func.func @unnormalized_loops() {
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c5 = arith.constant 5 : index
    %c7 = arith.constant 7 : index
    %c10 = arith.constant 10 : index
    %c17 = arith.constant 17 : index
    scf.for %arg0 = %c5 to %c10 step %c2 {
      scf.for %arg1 = %c7 to %c17 step %c3 {
        "use"(%arg0, %arg1) : (index, index) -> ()
      }
    }
    return
  }
}

