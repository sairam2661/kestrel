"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (i32, i32, i32) -> (), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%0, %2, "slt") : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.divsi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "arith.remsi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i1) -> (i32)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()