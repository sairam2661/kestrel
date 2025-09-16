"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "no_remap_nested"}> ({
    "foo.region"() ({
    ^bb0(%arg0: f64, %arg1: i16, %arg2: f64):
      "test.invalid"(%arg0, %arg2) : (f64, f64) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

