module {
  func.func @arith_cast_fptosi_i1(%arg0: f32) -> i1 {
    %0 = arith.fptosi %arg0 : f32 to i1
    return %0 : i1
  }
}

