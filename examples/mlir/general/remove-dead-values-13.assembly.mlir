module {
  func.func private @clean_region_branch_op_erase_it(%arg0: i32, %arg1: i1) -> i32 {
    %0 = scf.while (%arg2 = %arg0) : (i32) -> i32 {
      scf.condition(%arg1) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      scf.yield %arg2 : i32
    }
    return %0 : i32
  }
  func.func @main(%arg0: i32, %arg1: i1) {
    %0 = call @clean_region_branch_op_erase_it(%arg0, %arg1) : (i32, i1) -> i32
    return
  }
}

