"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflowing}> : (i32, i32) -> i32
    %1 = "arith.subf"(%arg1, %arg1) <{fastmath = #arith_fast}> : (f32, f32) -> f32
    %2 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflowing}> : (i32, i32) -> i32
    %3 = "arith.divf"(%arg1, %arg1) <{fastmath = #arith_fast}> : (f32, f32) -> f32
    %4 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %2, %arg0) : (i1, i32, i32) -> i32
    %6 = "arith.cmpf"(%3, %arg1) <{predicate = 4 : i64}> : (f32, f32) -> i1
    %7 = "arith.select"(%6, %3, %arg1) : (i1, f32, f32) -> f32
    "func.return"(%5, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()