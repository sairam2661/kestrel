"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
      %3 = "arith.cmpf"(%arg1, %1, "oeq") : (f32, f32) -> i1
      %4 = "arith.select"(%2, %0, %arg0) : (i1, i32, i32) -> i32
      %5 = "arith.select"(%3, %1, %arg1) : (i1, f32, f32) -> f32
      "func.return"(%4, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()