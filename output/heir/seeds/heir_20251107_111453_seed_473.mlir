"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %arg0) : (i1, i32, i32) -> i32
    %7 = "arith.addi"(%6, %0) : (i32, i32) -> i32
    "func.return"(%7, %6) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()