"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %const_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %const_f32 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %add_i32 = "arith.addi"(%arg0, %const_i32) : (i32, i32) -> i32
      %add_f32 = "arith.addf"(%arg1, %const_f32) : (f32, f32) -> f32
      %cmp_i32 = "arith.cmpi"(%add_i32, %const_i32, "gt") : (i32, i32) -> i1
      %cmp_f32 = "arith.cmpf"(%add_f32, %const_f32, "gt") : (f32, f32) -> i1
      "func.return"(%add_i32, %add_f32) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()