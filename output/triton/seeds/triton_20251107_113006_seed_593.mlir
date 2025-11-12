"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "fuzz_test"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %0, "gt") : (i32, i32) -> i1
      %5 = "scf.if"(%4) ({
        ^bb0:
          %6 = "arith.extsi"(%0) : (i32) -> i64
          "scf.yield"() : () -> ()
        ^bb1:
          %7 = "arith.negsi"(%0) : (i32) -> i32
          "scf.yield"() : () -> ()
      }) : i64
      %8 = "tt.reduce"(%5) ({
        ^bb0(%arg1: i64):
          %9 = "arith.addi"(%arg1, %5) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
          "scf.yield"(%9) : (i64) -> i64
      }) : i64
      "tt.return"(%8) : (i64) -> ()
  }) : () -> ()
}) : () -> ()