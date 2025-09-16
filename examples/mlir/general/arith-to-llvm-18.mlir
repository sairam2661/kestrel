"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> (), sym_name = "experimental_constrained_fptrunc"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.truncf"(%arg0) <{roundingmode = 0 : i32}> : (f64) -> f32
    %1 = "arith.truncf"(%arg0) <{roundingmode = 1 : i32}> : (f64) -> f32
    %2 = "arith.truncf"(%arg0) <{roundingmode = 2 : i32}> : (f64) -> f32
    %3 = "arith.truncf"(%arg0) <{roundingmode = 3 : i32}> : (f64) -> f32
    %4 = "arith.truncf"(%arg0) <{roundingmode = 4 : i32}> : (f64) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

