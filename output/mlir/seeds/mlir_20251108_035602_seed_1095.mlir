"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1, "oeq") : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    "func.return"(%4, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()