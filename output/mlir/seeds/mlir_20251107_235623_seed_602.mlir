"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "mixed_comparisons_and_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %2 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    %3 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %5 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    "func.return"(%0, %1, %2) : (i1, i1, i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> (f32, f32, f32), sym_name = "mixed_comparisons_and_arithmetic_float"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpf"(%arg0, %arg1, "Olt") : (f32, f32) -> i1
    %1 = "arith.cmpf"(%arg0, %arg1, "Ogt") : (f32, f32) -> i1
    %2 = "arith.cmpf"(%arg0, %arg1, "Oeq") : (f32, f32) -> i1
    %3 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %4 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %5 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    "func.return"(%0, %1, %2) : (i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()