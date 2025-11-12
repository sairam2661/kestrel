"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = -123 : i32}> : () -> i32
    %1 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "eq") : (i32, i32, i1) -> i1
    %3 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %4 = "arith.addf"(%3, %3) : (f32, f32) -> f32
    %5 = "arith.cmpf"(%4, %3, "lt") : (f32, f32, i1) -> i1
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()