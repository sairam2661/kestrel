"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, i8), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %5 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    %6 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
    %7 = "arith.cmpi"(%arg0, %2, "slt") : (i32, i32) -> i1
    %8 = "arith.cmpf"(%arg1, %3, "slt") : (f32, f32) -> i1
    "func.return"(%5, %6, %4) : (i32, f32, i8) -> ()
  }) : () -> ()
  "scf.if"(%7) ({
    ^bb0:
      %9 = "arith.addi"(%5, %2) : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
  }, {
    ^bb1:
      %10 = "arith.addf"(%6, %3) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
  }) : (i32) -> ()
}) : () -> ()