"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}, {}], function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    "scf.if"(%2) ({
    ^bb0:
      "tt.return"(%3) : (i32) -> ()
    }) {
    } : (i32) -> ()
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()