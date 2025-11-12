"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "sge") : (i32, i32) -> i1
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "scf.if"(%0) ({
      %4 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith_overflow_mode_flag}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %5 = "arith.muli"(%arg1, %2) <{overflowFlags = #arith_overflow_mode_flag}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> i32
    %6 = "arith.addi"(%3, %1) : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()