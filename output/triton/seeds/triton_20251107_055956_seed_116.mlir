"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.xori"(%3, %4) : (i32, i32) -> i32
    %6 = "scf.if"(%5) ({
      %7 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %8 = "arith.constant"() <{value = 15 : i32}> : () -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()