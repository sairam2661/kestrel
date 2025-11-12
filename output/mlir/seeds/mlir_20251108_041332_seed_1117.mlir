"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.cmpi"("eq", %0, %arg0) : (i32, i32) -> i1
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %3 = "arith.cmpf"("oeq", %2, %arg1) : (f32, f32) -> i1
      %4 = "scf.if"(%1) ({
        ^bb1(%5: i1):
          %6 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          %7 = "arith.addi"(%0, %6) : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> i32
      }) {
        "scf.yield" = #scf_yield
      } : (i1) -> i32
      %5 = "scf.if"(%3) ({
        ^bb2(%8: i1):
          %9 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
          %10 = "arith.addf"(%2, %9) : (f32, f32) -> f32
          "scf.yield"(%10) : (f32) -> f32
      }) {
        "scf.yield" = #scf_yield
      } : (i1) -> f32
      "func.return"(%4, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()