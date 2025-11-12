"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: f32, %arg1: i32):
      %0 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32
      %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.cmpi"("slt", %arg1, %2) : (i32, i32) -> i1
      %4 = "arith.select"(%3, %arg0, %0) : (i1, f32, f32) -> f32
      %5 = "arith.cmpi"("sge", %arg1, %2) : (i32, i32) -> i1
      %6 = "arith.select"(%5, %arg0, %4) : (i1, f32, f32) -> f32
      "func.return"(%6, %arg1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()