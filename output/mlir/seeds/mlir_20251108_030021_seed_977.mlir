"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%0, %2, "eq") : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %5 = "arith.addf"(%1, %4) : (f32, f32) -> f32
    %6 = "arith.cmpf"(%1, %5, "ult") : (f32, f32) -> i1
    "func.return"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()