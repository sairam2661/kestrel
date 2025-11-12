"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "tosa.const"() <{value = 5 : i32}> : () -> i32
    %1 = "tosa.const"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.divisi"(%4, %2) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()