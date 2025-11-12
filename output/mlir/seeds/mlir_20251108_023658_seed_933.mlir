"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32, i1) -> (f32, i32), sym_name = "complex_logic"}> ({
    ^bb0(%arg0: f32, %arg1: i32, %arg2: i1):
      %0 = "arith.constant"() <{value = 42.000000e+00 : f32}> : () -> f32
      %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %2 = "arith.cmpi"("eq", %arg1, %1) <{predicate = #arithcmp_eq}> : (i32, i32) -> i1
      %3 = "arith.andi"(%arg2, %2) : (i1, i1) -> i1
      %4:2 = "scf.if"(%3) ({
        ^bb0:
          %5 = "arith.addf"(%arg0, %0) <{fastmath = #arithfastmathnone}> : (f32, f32) -> f32
          %6 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
          "scf.yield"(%5, %6) : (f32, i32) -> ()
      }, {
        ^bb1:
          %7 = "arith.subf"(%arg0, %0) <{fastmath = #arithfastmathnone}> : (f32, f32) -> f32
          %8 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
          "scf.yield"(%7, %8) : (f32, i32) -> ()
      }) : (i1) -> (f32, i32)
      "func.return"(%4#0, %4#1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()