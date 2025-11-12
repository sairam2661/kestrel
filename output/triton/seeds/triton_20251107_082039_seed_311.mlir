"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "unusual_sequence_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %c7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %c8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c9_i32 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %cmp1 = "arith.cmpi"(%arg0, %c0_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select1 = "arith.select"(%cmp1, %c1_i32, %arg0) : (i1, i32, i32) -> i32
    %cmp2 = "arith.cmpi"(%select1, %c1_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select2 = "arith.select"(%cmp2, %c2_i32, %select1) : (i1, i32, i32) -> i32
    %cmp3 = "arith.cmpi"(%select2, %c2_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select3 = "arith.select"(%cmp3, %c3_i32, %select2) : (i1, i32, i32) -> i32
    %cmp4 = "arith.cmpi"(%select3, %c3_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select4 = "arith.select"(%cmp4, %c4_i32, %select3) : (i1, i32, i32) -> i32
    %cmp5 = "arith.cmpi"(%select4, %c4_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select5 = "arith.select"(%cmp5, %c5_i32, %select4) : (i1, i32, i32) -> i32
    %cmp6 = "arith.cmpi"(%select5, %c5_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select6 = "arith.select"(%cmp6, %c6_i32, %select5) : (i1, i32, i32) -> i32
    %cmp7 = "arith.cmpi"(%select6, %c6_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select7 = "arith.select"(%cmp7, %c7_i32, %select6) : (i1, i32, i32) -> i32
    %cmp8 = "arith.cmpi"(%select7, %c7_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select8 = "arith.select"(%cmp8, %c8_i32, %select7) : (i1, i32, i32) -> i32
    %cmp9 = "arith.cmpi"(%select8, %c8_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select9 = "arith.select"(%cmp9, %c9_i32, %select8) : (i1, i32, i32) -> i32
    %cmp10 = "arith.cmpi"(%select9, %c9_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select10 = "arith.select"(%cmp10, %c10_i32, %select9) : (i1, i32, i32) -> i32
    "tt.return"(%select10) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()