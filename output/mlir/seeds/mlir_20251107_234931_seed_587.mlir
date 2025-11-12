"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i8, i32), sym_name = "test_mixed_types"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 2147483647 : i32}> : () -> i32
    %2 = "scf.if"(%arg0) ({
      %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_flagscarry}> : (i32, i32) -> i32
      "scf.yield"(%0, %3) : (i8, i32) -> ()
    }, {
      %4 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith_overflow_flagscarry}> : (i32, i32) -> i32
      "scf.yield"(%0, %4) : (i8, i32) -> ()
    }) : (i8) -> (i8, i32)
    "func.return"(%2#0, %2#1) : (i8, i32) -> ()
  }) : () -> ()
}) : () -> ()