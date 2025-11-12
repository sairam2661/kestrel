"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.pointer_range = 32 : i32}], function_type = (i32, !ttptr) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: !ttptr):
    %0 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.divsi"(%0, %arg0) <{roundingMode = #arith_fastmath_none}> : (i32, i32) -> i32
    %2 = "arith.xori"(%1, %arg0) <{fastmath = #arith_fastmath_none}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %arg0) <{roundingMode = #arith_fastmath_none}> : (i32, i32) -> i32
    %5 = "tt.addptr"(%arg1, %4) : (!ttptr, i32) -> !ttptr
    "scf.if"(%arg0) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()