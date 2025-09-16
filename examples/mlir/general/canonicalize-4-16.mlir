"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "bitcastBackAndForth"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.bitcast"(%arg0) : (i32) -> f32
    %1 = "arith.bitcast"(%0) : (f32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

