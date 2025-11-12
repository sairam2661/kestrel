"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.thread_id = 0 : i32}, {}], function_type = (i32, i32) -> i32, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "scf.if"(%3) ({
    ^bb1:
      %5 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> i32
    }) {
    } : (i32) -> i32
    %6 = "scf.for"(%arg0, %arg1, %4) ({
    ^bb2(%indvar: i32):
      %7 = "arith.addi"(%indvar, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"(%4) : (i32) -> i32
  }) : () -> i32
}) : () -> ()