"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{"==" = #arith_cmp_eq}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1) <{"==" = #arith_cmp_eq}> : (f32, f32) -> i1
    %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %4 = "scf.if"(%0) <{operands = [i1]}> ({
    ^bb1(%arg2: i1):
      %5 = "arith.addi"(%2, %2) : (i32, i32) -> i32
      %6 = "arith.addf"(%3, %3) : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) {operands = [i32, f32]} : (i1) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()