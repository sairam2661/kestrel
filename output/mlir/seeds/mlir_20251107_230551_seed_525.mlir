"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.cmpi"("slt", %2, %0) : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 2.71 : f32}> : () -> f32
    %6 = "arith.addf"(%4, %5) : (f32, f32) -> f32
    %7 = "arith.cmpf"("olt", %6, %4) : (f32, f32) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()