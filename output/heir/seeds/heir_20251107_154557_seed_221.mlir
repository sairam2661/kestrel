"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_select_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg0, %1) : (i1, i32, i32) -> i32
    %5 = "arith.cmpi"(%arg1, %arg2, "slt") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %arg1, %arg2) : (i1, i32, i32) -> i32
    %7 = "arith.cmpi"(%4, %6, "eq") : (i32, i32) -> i1
    %8 = "arith.select"(%7, %0, %2) : (i1, i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()