"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_complexity_example"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %1, "oeq") : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
    ^bb0:
      %5 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      %6 = "arith.addf"(%1, %1) : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) {
    } : (i32, f32) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()