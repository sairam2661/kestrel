module {
  func.func @two_bands() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    scf.for %arg0 = %c0 to %c10 step %c1 {
      scf.for %arg1 = %c0 to %c10 step %c1 {
        scf.for %arg2 = %arg0 to %arg1 step %c1 {
          scf.for %arg3 = %arg0 to %arg1 step %c1 {
            "foo"() : () -> ()
          }
        }
      }
    }
    return
  }
}

