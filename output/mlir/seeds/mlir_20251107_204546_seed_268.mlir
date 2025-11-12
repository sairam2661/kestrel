"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_cmp_and_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "ne"}> : (i32, i32) -> i1
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.select"(%0, %1, %arg0) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg1) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()