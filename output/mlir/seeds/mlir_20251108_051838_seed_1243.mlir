"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg0, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%5, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()