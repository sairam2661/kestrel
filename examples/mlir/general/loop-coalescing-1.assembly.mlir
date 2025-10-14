module {
  func.func @multi_use() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    scf.for %arg0 = %c1 to %c10 step %c1 {
      scf.for %arg1 = %c1 to %c10 step %c1 {
        scf.for %arg2 = %c1 to %c10 step %c1 {
          "use1"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
          "use2"(%arg0, %arg2, %arg1) : (index, index, index) -> ()
          "use3"(%arg2, %arg1, %arg0) : (index, index, index) -> ()
        }
      }
    }
    return
  }
}

