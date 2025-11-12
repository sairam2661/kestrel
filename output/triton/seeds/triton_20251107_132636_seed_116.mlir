"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "mix_dialects"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "tt.make_range"() <{start = 0 : i32, end = 100 : i32}> : () -> tensor<100xi32>
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.remsi"(%2, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%arg0, %6) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %8 = "scf.if"(%7) ({
      %9 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }, {
      %10 = "arith.subi"(%3, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()