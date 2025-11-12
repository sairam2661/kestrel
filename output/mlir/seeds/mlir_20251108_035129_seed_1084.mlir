"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 20.000000e+00 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %2) <{pred = "oeq"}> : (f32, f32) -> i1
    %5 = "scf.if"(%4) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) : () -> ()
    %6 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "arith.addi"(%1, %6) : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()