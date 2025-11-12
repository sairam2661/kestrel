"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16) -> i32, sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: i8, %arg1: i16):
    %0 = "arith.extui"(%arg0) : (i8) -> i32
    %1 = "arith.extui"(%arg1) : (i16) -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 42 : i32}> : i32
    %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()