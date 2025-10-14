module {
  func.func @f(%arg0: f32) {
    %0 = math.exp %arg0 : f32
    "foo.has_region"() ({
      %1 = math.exp %0 : f32
      "foo.return"() : () -> ()
    }) : () -> ()
    return
  }
}

