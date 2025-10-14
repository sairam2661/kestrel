module {
  func.func @main(%arg0: f32) -> f32 {
    %0 = "foo"() ({
      "bar0"() : () -> ()
    }, {
      "bar1"() : () -> ()
    }) {skip_after_region = 0 : i64} : () -> f32
    %1 = arith.addf %0, %arg0 : f32
    return %1 : f32
  }
}

