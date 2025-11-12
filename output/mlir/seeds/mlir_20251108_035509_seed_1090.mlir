"builtin.module"() ({
  "func.func"() <{function_type = (index, f64) -> (f64, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: index, %arg1: f64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f64, f64) -> f64
    %2 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (index, index) -> i1
    %3 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
    %4 = "arith.addf"(%1, %3) : (f64, f64) -> f64
    %5 = "scf.if"(%2) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%4, %0) : (f64, i32) -> ()
  }) : () -> ()
}) : () -> ()