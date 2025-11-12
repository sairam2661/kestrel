"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_compare"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cmp1 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    %select1 = "arith.select"(%cmp1, %arg0, %c0_i32) : (i1, i32, i32) -> i32
    %cmp2 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %select2 = "arith.select"(%cmp2, %arg1, %select1) : (i1, i32, i32) -> i32
    "func.return"(%select2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()