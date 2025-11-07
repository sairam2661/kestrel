"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input trigger : i1, input in : i32>, parameters = [], sym_name = "foo"}> ({
  ^bb0(%arg1: i1, %arg2: i32):
    "hw.triggered"(%arg1, %arg2) <{event = 0 : i32}> ({
    ^bb0(%arg3: i32):
      "some.user"(%arg3) : (i32) -> ()
    }) : (i1, i32) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input trigger : i1>, parameters = [], sym_name = "bar"}> ({
  ^bb0(%arg0: i1):
    "hw.triggered"(%arg0) <{event = 0 : i32}> ({
      "some.user"() : () -> ()
    }) : (i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

