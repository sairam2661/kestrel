"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "mixed_operations"}> ({
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_f32 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %addi = "arith.addi"(%c0_i32, %c2_i32) : (i32, i32) -> i32
    %addf = "arith.addf"(%c1_f32, %c1_f32) : (f32, f32) -> f32
    %cmpi = "arith.cmpi"("eq", %addi, %c0_i32) : (i32, i32) -> i1
    %cmpf = "arith.cmpf"("gt", %addf, %c1_f32) : (f32, f32) -> i1
    "arith.select"(%cmpi, %c0_i32, %c2_i32) : (i1, i32, i32) -> i32
    "func.return"(%c0_i32) : (i32) -> ()
  }) : () -> ()
}) : () -> ()