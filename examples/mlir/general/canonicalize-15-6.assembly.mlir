module {
  func.func private @side_effect()
  func.func @all_unused(%arg0: i1) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0:2 = scf.if %arg0 -> (index, index) {
      func.call @side_effect() : () -> ()
      scf.yield %c0, %c1 : index, index
    } else {
      func.call @side_effect() : () -> ()
      scf.yield %c0, %c1 : index, index
    }
    return
  }
}

