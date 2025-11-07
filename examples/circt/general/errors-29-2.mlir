"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input input : i32>, parameters = [], sym_name = "variadic_op"}> ({
  ^bb0(%arg0: i32):
    %0 = "comb.and"(%arg0, %arg0, %arg0) : (i32, i32, i32) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

