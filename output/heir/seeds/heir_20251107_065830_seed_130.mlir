"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRET, i32) -> !secret_SECRET, sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: !secret_SECRET, %arg1: i32):
    %c0_i32 = "arith.constant"() {value = 0 : i32} : () -> i32
    %c1_i32 = "arith.constant"() {value = 1 : i32} : () -> i32
    %c2_i32 = "arith.constant"() {value = 2 : i32} : () -> i32
    %c3_i32 = "arith.constant"() {value = 3 : i32} : () -> i32
    %c4_i32 = "arith.constant"() {value = 4 : i32} : () -> i32
    %c5_i32 = "arith.constant"() {value = 5 : i32} : () -> i32

    %cmp = "arith.cmpi"(%arg1, %c0_i32, "slt") : (i32, i32) -> i1
    %select = "arith.select"(%cmp, %c1_i32, %c2_i32) : (i1, i32, i32) -> i32

    %generic = "secret.generic"(%arg0, %select) ({
    ^bb1(%arg2: !secret_SECRET, %arg3: i32):
      %add = "arith.addi"(%arg3, %c3_i32) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %sub = "arith.subi"(%add, %c4_i32) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %yld = "secret.yield"(%sub) : (i32) -> ()
    }) : (!secret_SECRET, i32) -> !secret_SECRET

    "func.return"(%generic) : (!secret_SECRET) -> ()
  }) : () -> ()
}) : () -> ()