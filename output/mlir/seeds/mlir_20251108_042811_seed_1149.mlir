"builtin.module"() ({
  "func.func"() <{function_type = (i32, f64) -> (i32, f64, i32), sym_name = "mixed_types_with_scf"}> ({
  ^bb0(%arg0: i32, %arg1: f64):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.0 : f64}> : () -> f64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.mulf"(%arg1, %1) : (f64, f64) -> f64
    %4:2 = "scf.if"(%2) ({
      %5 = "arith.mulfi"(%arg1, %2) : (f64, i32) -> f64
      "scf.yield"(%2, %5) : (i32, f64) -> ()
    }, {
      %6 = "arith.subi"(%0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%6, %3) : (i32, f64) -> ()
    }) : (i32) -> (i32, f64)
    "func.return"(%4#0, %4#1, %2) : (i32, f64, i32) -> ()
  }) : () -> ()
}) : () -> ()