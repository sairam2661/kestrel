module {
  func.func @test(%arg0: f32) {
    %0 = "test.illegal_op_a"() : () -> i32
    "foo.region"() ({
      "test.invalid"() : () -> ()
    }) : () -> ()
    return
  }
}

