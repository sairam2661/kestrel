"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_math"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg2) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()