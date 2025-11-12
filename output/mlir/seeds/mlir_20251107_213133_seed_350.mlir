"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32) -> (i32, f32), sym_name = "complexOperationTest"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (i32, i32) -> i1
    %2 = "arith.cmpf"(%arg2, 0.0001) <{predicate = "olt"}> : (f32, f32) -> i1
    %3 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    %4 = "arith.select"(%2, %arg2, 0.0) : (i1, f32, f32) -> f32
    "func.return"(%3, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()