module {
  func.func @parametric(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    scf.for %arg6 = %arg0 to %arg1 step %arg2 {
      scf.for %arg7 = %arg3 to %arg4 step %arg5 {
        "foo"(%arg6, %arg7) : (index, index) -> ()
      }
    }
    return
  }
}

