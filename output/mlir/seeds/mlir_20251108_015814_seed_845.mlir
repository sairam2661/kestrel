"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> f32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 2.5e-1 : f32}> : () -> f32
    %6 = "arith.addf"(%arg2, %5) : (f32, f32) -> f32
    %7 = "arith.cmpf"("oeq", %6, %5) : (f32, f32) -> i1
    "scf.if"(%7) ({
    ^bb0:
      %8 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %9 = "arith.addi"(%4, %8) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%6) : (f32) -> ()
  }) : () -> ()
}) : () -> ()