"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedArithAndLogic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
    "func.return"(%0, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()