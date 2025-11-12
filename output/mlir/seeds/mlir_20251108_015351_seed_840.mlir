"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i64, f64), sym_name = "mixed_type_func"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
      %2 = "scf.if"(%1) ({
        %3 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
        %4 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
        %5 = "arith.constant"() <{value = 100 : i64}> : () -> i64
        "scf.yield"(%5, %4) : (i64, f32) -> ()
      }, {
        %6 = "arith.constant"() <{value = 0 : i64}> : () -> i64
        %7 = "arith.constant"() <{value = 0.0 : f64}> : () -> f64
        "scf.yield"(%6, %7) : (i64, f64) -> ()
      }) : (i1) -> (i64, f64)
      "func.return"(%2#0, %2#1) : (i64, f64) -> ()
  }) : () -> ()
}) : () -> ()