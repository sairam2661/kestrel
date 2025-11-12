"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, f64), sym_name = "fuzzTest1"}> ({
    %0:2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1:2 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
    %2:2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %3:2 = "arith.addf"(%1, %1) : (f64, f64) -> f64
    "scf.for"(%0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
    ^bb0(%iv0: i32):
      %4:2 = "arith.addi"(%iv0, %0) : (i32, i32) -> i32
      %5:2 = "arith.addf"(%iv0, %1) : (i32, f64) -> f64
      "scf.yield"() : () -> ()
    }) : (i32, f64) -> ()
    "func.return"(%2, %3) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()