"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i1, i32), sym_name = "complex_mixed_dialects"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %1 = "arith.cmpi"(%arg0, %0, "slt") : (i8, i8) -> i1
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflow_mode_signed}> : (i32, i32) -> i32
    %4 = "scf.if"(%1) ({
      %5 = "arith.constant"() <{value = 2147483647 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "arith.constant"() <{value = -2147483648 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%1, %4) : (i1, i32) -> ()
  }) : () -> (i1, i32)
}) : () -> ()