"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32

    %cmp0 = "arith.cmpi"(%arg0, %c0_i32) <{predicate = 4}> : (i32, i32) -> i1
    %select0 = "arith.select"(%cmp0, %arg0, %c1_i32) : (i1, i32, i32) -> i32

    %cmp1 = "arith.cmpi"(%arg1, %c0_i32) <{predicate = 4}> : (i32, i32) -> i1
    %select1 = "arith.select"(%cmp1, %arg1, %c1_i32) : (i1, i32, i32) -> i32

    %add0 = "arith.addi"(%select0, %select1) : (i32, i32) -> i32
    %cmp2 = "arith.cmpi"(%add0, %c2_i32) <{predicate = 8}> : (i32, i32) -> i1
    %select2 = "arith.select"(%cmp2, %add0, %c3_i32) : (i1, i32, i32) -> i32

    %mul0 = "arith.muli"(%select2, %c4_i32) : (i32, i32) -> i32
    %cmp3 = "arith.cmpi"(%mul0, %c5_i32) <{predicate = 5}> : (i32, i32) -> i1
    %select3 = "arith.select"(%cmp3, %mul0, %c5_i32) : (i1, i32, i32) -> i32

    "func.return"(%select3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()