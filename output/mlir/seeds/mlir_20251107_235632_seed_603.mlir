"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i1) -> (i32, f32, i1), sym_name = "test_unusual_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i1):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg1, %arg1, "lt") : (f32, f32) -> i1
    %2 = "arith.cmpf"(%arg2, %arg2, "oeq") : (i1, i1) -> i1
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    "func.return"(%4, %3, %2) : (i32, f32, i1) -> ()
  }) : () -> ()
}) : () -> ()