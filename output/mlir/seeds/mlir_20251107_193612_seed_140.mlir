"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32), sym_name = "test_unusual_sequence"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, %arg0, "OEQ") : (f32, f32) -> i1
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.cmpi"(%1, %0, "ne") : (i1, i1) -> i1
    %3 = "arith.cmpi"(%2, %2, "eq") : (i1, i1) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()