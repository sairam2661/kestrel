"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_complexity"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %4 = "scf.if"(%0) ({
    ^bb0:
      %5 = "arith.addi"(%2, %2) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    %6 = "scf.if"(%1) ({
    ^bb0:
      %7 = "arith.addf"(%3, %3) : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) : (f32) -> f32
    "func.return"(%4, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()