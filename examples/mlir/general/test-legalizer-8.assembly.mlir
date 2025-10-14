module {
  func.func @remap_moved_region_args() {
    "test.region"() ({
    ^bb0(%arg0: i64, %arg1: i16, %arg2: i64, %arg3: f32):
      "test.invalid"(%arg0, %arg2, %arg3) : (i64, i64, f32) -> ()
    }) : () -> ()
    return
  }
}

