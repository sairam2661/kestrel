"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedDialects"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
      %3 = "arith.cmpf"(%1, %1, "oeq") : (f32, f32) -> i1
      scf.if %2, %3, "loc(" : () -> ()  "("
      (
        %4: i32, %5: f32
      ) ({
        ^bb1:
          %6 = "arith.addi"(%0, %4) : (i32, i32) -> i32
          %7 = "arith.addf"(%1, %5) : (f32, f32) -> f32
          scf.yield %6, %7 : (i32, f32)
      }) : (i32, f32) -> (i32, f32)
      scf.if %3, "loc(" : () -> ()  "("
      (
        %8: i32, %9: f32
      ) ({
        ^bb2:
          %10 = "arith.addi"(%4, %8) : (i32, i32) -> i32
          %11 = "arith.addf"(%5, %9) : (f32, f32) -> f32
          scf.yield %10, %11 : (i32, f32)
      }) : (i32, f32) -> (i32, f32)
      "func.return"(%4, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()