"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "mixed_integers"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %1 = "tosa.const"() <{value = 1234567890123456789 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%1, %0) : (i64, i64) -> i64
    %4 = "arith.muli"(%arg1, %2) : (i64, i32) -> i64
    %5 = "arith.divu"(%4, %3) : (i64, i64) -> i64
    %6 = "arith.extui"(%5) : (i64) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()