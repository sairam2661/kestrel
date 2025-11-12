"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x2xi8>) -> (i32, f32), sym_name = "complex_op_mix"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x2xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, f32) -> f32
    %2 = "arith.addf"(%1, %arg1) : (f32, f32) -> f32
    %3 = "arith.constant"() <{value = 1.5 : f32}> : () -> f32
    %4 = "arith.mul"(%2, %3) : (f32, f32) -> f32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.addi"(%arg0, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%6, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()