"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, f32) -> (i32, i1), sym_name = "complex_arith_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg2) : (f32, f32) -> f32
    %2 = "arith.cmpf"(%arg1, %arg2) <{predicate = 3 : i64}> : (f32, f32) -> i1
    %3 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "func.return"(%0, %3) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()