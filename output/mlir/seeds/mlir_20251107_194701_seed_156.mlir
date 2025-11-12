"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "fuzz_complex_control_flow"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "scf.if"(%0) ({
      %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : () -> i32
    "scf.for"(%2, %1, %2, %0) ({
      ^bb1(%iv: i32):
        %4 = "arith.addi"(%iv, %1) : (i32, i64) -> i64
        "scf.yield"() : () -> ()
    }) : () -> ()
    %5 = "scf.if"(%1) ({
      %6 = "arith.addf"(%1, %1) : (i64, i64) -> f64
      "scf.yield"(%6) : (f64) -> ()
    }) : () -> f64
    "func.return"(%2, %1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()