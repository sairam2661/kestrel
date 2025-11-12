"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16) -> (i32, i64), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i8, %arg1: i16):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 1024 : i16}> : () -> i16
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "arith.extui"(%2) : (i8) -> i32
    %4 = "arith.extsi"(%1) : (i16) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.extsi"(%5) : (i32) -> i64
    "func.return"(%5, %6) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()