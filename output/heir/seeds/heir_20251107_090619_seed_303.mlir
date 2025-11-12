"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_select_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %cmp0 = "arith.cmpi"(%arg0, %c1_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select0 = "arith.select"(%cmp0, %c2_i32, %arg1) : (i1, i32, i32) -> i32
    %cmp1 = "arith.cmpi"(%select0, %c3_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select1 = "arith.select"(%cmp1, %c4_i32, %select0) : (i1, i32, i32) -> i32
    "func.return"(%select1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()