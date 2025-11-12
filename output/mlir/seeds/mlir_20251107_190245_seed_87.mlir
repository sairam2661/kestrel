"builtin.module"() ({
  "func.func"() <{function_type = (f64, i32) -> (f64, i32), sym_name = "combinedOps"}> ({
    ^bb0(%arg0: f64, %arg1: i32):
      %0 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.addf"(%arg0, %0) : (f64, f64) -> f64
      %3 = "arith.cmpf"(%arg0, %0) <{op = "oeq"}> : (f64, f64) -> i1
      %4 = "scf.if"(%3) ({
        ^bb0:
          %5 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> ()
      }, {
        ^bb0:
          %6 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
      }) : (i32)
      "func.return"(%2, %4) : (f64, i32) -> ()
  }) : () -> ()
}) : () -> ()