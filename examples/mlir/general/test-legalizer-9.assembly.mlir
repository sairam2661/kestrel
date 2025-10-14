module {
  func.func @remap_cloned_region_args() {
    "test.region"() ({
    ^bb0(%arg0: i64, %arg1: i16, %arg2: i64, %arg3: f32):
      "test.invalid"(%arg0, %arg2, %arg3) : (i64, i64, f32) -> ()
    }) {legalizer.should_clone} : () -> ()
    return
  }
  func.func @remap_drop_region() {
    "test.drop_region_op"() ({
    ^bb0(%arg0: i64, %arg1: i16, %arg2: i64, %arg3: f32):
      "test.invalid"(%arg0, %arg2, %arg3) : (i64, i64, f32) -> ()
    }) : () -> ()
    return
  }
}

