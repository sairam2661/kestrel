"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg1, %arg1) : (i1, f32, f32) -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%arg1, %3) <{predicate = "oeq"}> : (f32, f32) -> i1
    %5 = "arith.select"(%4, %3, %arg1) : (i1, f32, f32) -> f32
    "func.return"(%0, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()