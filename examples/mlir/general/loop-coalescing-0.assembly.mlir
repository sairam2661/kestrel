module {
  func.func @one_3d_nest() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c42 = arith.constant 42 : index
    %c56 = arith.constant 56 : index
    scf.for %arg0 = %c0 to %c42 step %c1 {
      scf.for %arg1 = %c0 to %c56 step %c1 {
        scf.for %arg2 = %c0 to %c3 step %c1 {
          "use"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
        }
      }
    }
    return
  }
}

