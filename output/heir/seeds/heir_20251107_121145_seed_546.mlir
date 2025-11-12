"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg0) : (i32, i32) -> i32
    %3 = "arith.cmpi"("eq", %2, %0) : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()