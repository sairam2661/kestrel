"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "scf.if"(%1) ({
        %3 = "arith.divsi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }, {
        %4 = "arith.remsi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> i32
      %5 = "arith.xori"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "tt.return"(%5) : (i32) -> i32
  }) : (i32) -> i32
}) : () -> ()