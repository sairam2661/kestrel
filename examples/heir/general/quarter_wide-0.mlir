"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "test_simple_split2"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 31 : i8}> : () -> i8
    %1 = "arith.extui"(%0) : (i8) -> i32
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

