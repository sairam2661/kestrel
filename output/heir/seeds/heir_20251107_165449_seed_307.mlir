"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %3 = "arith.select"(%arg0, %arg1, %2) : (i32, i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %arg0, %arg1) : (i1, i32, i32) -> i32
    %6 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %7 = "arith.addf"(%6, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> f32
    "func.return"(%7) : (f32) -> ()
  }) : () -> ()
}) : () -> ()