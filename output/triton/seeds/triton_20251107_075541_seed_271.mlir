"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (!tt_ptr) -> (), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: !tt_ptr):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      %4 = "scf.for"(%0, %1, %1, %arg0) ({
      ^bb0(%arg7: i32, %arg8: !tt_ptr):
        %5 = "arith.addi"(%arg7, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %6 = "arith.muli"(%5, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %7 = "arith.divsi"(%6, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %8 = "arith.xori"(%7, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%8, %arg8) : (i32, !tt_ptr) -> ()
      }) : (i32, i32, i32, !tt_ptr) -> !tt_ptr
      "scf.yield"(%3) : (i1) -> ()
    }, {
      %9 = "scf.for"(%1, %0, %0, %arg0) ({
      ^bb0(%arg5: i32, %arg6: !tt_ptr):
        %10 = "arith.subi"(%arg5, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %11 = "arith.remsi"(%10, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%11, %arg6) : (i32, !tt_ptr) -> ()
      }) : (i32, i32, i32, !tt_ptr) -> !tt_ptr
      "scf.yield"(%2) : (i1) -> ()
    }) : (i1) -> i1
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()