"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8) -> i32, sym_name = "mixed_type_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i8) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg0) : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 42}> : () -> i32
    %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()