"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.select"(%2, %3, %1) : (i1, i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg1) : (i32, i32) -> i32
    "func.return"(%5, %arg0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()