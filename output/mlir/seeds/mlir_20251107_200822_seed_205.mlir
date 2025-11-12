"builtin.module"() ({
  "func.func"() <{function_type = (i64, f64, index) -> (i64, f64, index), sym_name = "complex_nested_if"}> ({
  ^bb0(%arg0: i64, %arg1: f64, %arg2: index):
    %0 = "arith.addi"(%arg0, %arg0) : (i64, i64) -> i64
    %1 = "arith.addf"(%arg1, %arg1) : (f64, f64) -> f64
    %2 = "scf.if"(%arg2) ({
      %3 = "arith.cmpf"("oeq", %arg1, %1) : (f64, f64) -> i1
      %4 = "scf.if"(%3) ({
        "scf.yield"(%0, %1, %arg2) : (i64, f64, index) -> ()
      }, {
        "scf.yield"(%0, %1, %arg2) : (i64, f64, index) -> ()
      }) : (i1) -> (i64, f64, index)
      "scf.yield"(%4#0, %4#1, %4#2) : (i64, f64, index) -> ()
    }, {
      "scf.yield"(%0, %1, %arg2) : (i64, f64, index) -> ()
    }) : (index) -> (i64, f64, index)
    "func.return"(%2#0, %2#1, %2#2) : (i64, f64, index) -> ()
  }) : () -> ()
}) : () -> ()