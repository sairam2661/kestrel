module {
  func.func private @make_i32() -> i32
  func.func @for_yields_2(%arg0: index, %arg1: index, %arg2: index) -> i32 {
    %0 = call @make_i32() : () -> i32
    %1 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %0) -> (i32) {
      scf.yield %arg4 : i32
    }
    return %1 : i32
  }
}

