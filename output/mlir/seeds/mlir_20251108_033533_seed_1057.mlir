"builtin.module"() ({
  "func.func"() <{function_type = (i64, f32) -> (i64, f32), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i64, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i64, i64) -> i64
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "tosa.const"() <{value = 42 : i64}> : () -> i64
    %3 = "arith.addi"(%0, %2) : (i64, i64) -> i64
    %4 = "arith.cmpf"(%1, %1, "eq") : (f32, f32) -> i1
    %5:2 = "scf.if"(%4) ({
      "scf.yield"(%3, %1) : (i64, f32) -> ()
    }, {
      "scf.yield"(%arg0, %arg1) : (i64, f32) -> ()
    }) : (i1) -> (i64, f32)
    "func.return"(%5#0, %5#1) : (i64, f32) -> ()
  }) : () -> ()
}) : () -> ()