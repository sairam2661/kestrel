"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "mixed_types_complex"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%2, %0, "ne") : (i32, i32, i32) -> i1
    %5 = "arith.cmpf"(%3, %1, "ne") : (f32, f32, i32) -> i1
    %6 = "arith.andi"(%4, %5) : (i1, i1) -> i1
    %7 = "arith.select"(%6, %2, %0) : (i1, i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()