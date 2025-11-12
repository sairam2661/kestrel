"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_tensor_and_scalar"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg0, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%1, %0, "eq") : (i32, i32, i1) -> i1
    %5 = "arith.cmpf"(%3, %2, "oeq") : (f32, f32, i1) -> i1
    %6 = "arith.andi"(%4, %5) : (i1, i1) -> i1
    "func.return"(%3, %6) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()