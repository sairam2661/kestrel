"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "fuzz_complex_control_flow"}> ({
  ^bb0(%arg0: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32

    %0:2 = "scf.for"(%c0_i32, %c4_i32, %c1_i32) ({
    ^bb0(%arg1: i32):
      %1 = "arith.addi"(%arg1, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%arg1, %1) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32)

    %2 = "arith.addi"(%0#0, %0#1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    %3:2 = "scf.for"(%c0_i32, %c2_i32, %c1_i32) ({
    ^bb0(%arg2: i32):
      %4 = "arith.addi"(%arg2, %c2_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%arg2, %4) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32)

    %5 = "arith.addi"(%3#0, %3#1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    %6 = "arith.addi"(%2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()