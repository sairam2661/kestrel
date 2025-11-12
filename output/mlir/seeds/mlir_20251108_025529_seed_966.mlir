"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 5.0 : f32}> : f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %2) <{predicate = 0 : i64}> : (f32, f32) -> i1
    "func.return"(%3, %0) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()