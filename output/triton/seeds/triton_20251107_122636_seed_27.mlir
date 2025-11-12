"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %arg1) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %5 = "arith.xori"(%4, %arg0) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %6 = "arith.divsi"(%5, %arg1) <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %0, "lt") <{overflowFlags = #arith_overflowOps}> : (i32, i32) -> i1
    "scf.if"(%7) ({
      %8 = "arith.constant"() <{value = -1 : i32}> : () -> i32
      "tt.return"(%8) : (i32) -> ()
    }, {
      "tt.return"(%6) : (i32) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()