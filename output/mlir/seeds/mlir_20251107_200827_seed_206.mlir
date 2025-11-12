"builtin.module"() ({
  "func.func"() <{function_type = (i64, f64) -> (i64, f64), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i64, %arg1: f64):
    %cond = "arith.cmpf"(%arg1, 5.0) <{predicate = "oeq"}> : (f64, f64) -> i1
    %0:2 = "scf.if"(%cond) ({
      %1 = "arith.addi"(%arg0, 10) : (i64) -> i64
      %2 = "arith.addf"(%arg1, 20.0) : (f64) -> f64
      "scf.yield"(%1, %2) : (i64, f64) -> ()
    }, {
      %3 = "scf.for"(%arg0) <{bound = 5, step = 1}> ({
      ^bb1(%iv: i64):
        %4 = "arith.addi"(%iv, 1) : (i64) -> i64
        "scf.yield"(%4) : (i64) -> ()
      }) : (i64) -> i64
      %5 = "arith.addf"(%arg1, 30.0) : (f64) -> f64
      "scf.yield"(%3, %5) : (i64, f64) -> ()
    }) : (i1) -> (i64, f64)
    "func.return"(%0#0, %0#1) : (i64, f64) -> ()
  }) : () -> ()
}) : () -> ()