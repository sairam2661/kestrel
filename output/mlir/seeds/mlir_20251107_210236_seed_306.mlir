"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_f32 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.divsi_signed"(%arg0, %arg1) : (i32, i32) -> i32
      %4 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
      
      %5 = "arith.select"(%4, %0, %1) : (i1, i32, i32) -> i32
      
      %6 = "arith.addf"(%c3_f32, %c3_f32) : (f32, f32) -> f32
      %7 = "arith.mulf"(%c3_f32, %c3_f32) : (f32, f32) -> f32
      %8 = "arith.cmpf"("oeq", %c3_f32, %c3_f32) : (f32, f32) -> i1
      
      %9 = "arith.select"(%8, %6, %7) : (i1, f32, f32) -> f32
      
      "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()