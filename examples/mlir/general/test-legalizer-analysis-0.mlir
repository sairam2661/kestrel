"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "test"}> ({
  ^bb0(%arg0: f32):
    %0 = "test.illegal_op_a"() : () -> i32
    "foo.region"() ({
      "test.invalid"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

