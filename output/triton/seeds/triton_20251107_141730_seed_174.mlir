"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> (), sym_name = "bitwise_mixer"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 255 : i32}> : () -> i32
    %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg2) : (i32, i32) -> i32
    %4 = "arith.shli"(%3, %0) : (i32, i32) -> i32
    %5 = "arith.shrsi"(%4, %1) : (i32, i32) -> i32
    %6 = "arith.muli"(%5, %arg0) : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %arg2, "eq") : (i32, i32) -> i1
    %8 = "arith.select"(%7, %arg1, %arg2) : (i1, i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()