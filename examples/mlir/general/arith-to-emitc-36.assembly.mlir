module {
  func.func @arith_extui_i1_to_i32(%arg0: i1) {
    %0 = arith.extui %arg0 : i1 to i32
    return
  }
}

