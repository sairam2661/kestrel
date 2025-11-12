"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_addition"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"("sge", %0, %arg0) : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.select"(%1, %0, %2) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()