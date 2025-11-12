"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 5.5 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
      %5 = "arith.select"(%4, %3, %arg1) : (i1, f32, f32) -> f32
      "func.return"(%5, %1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()