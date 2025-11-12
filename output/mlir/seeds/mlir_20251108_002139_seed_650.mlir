"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "transform_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %add0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %add1 = "arith.addi"(%arg1, %c2_i32) : (i32, i32) -> i32
    %mul0 = "arith.muli"(%add0, %add1) : (i32, i32) -> i32
    %sub0 = "arith.subi"(%mul0, %c3_i32) : (i32, i32) -> i32
    "func.return"(%sub0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()