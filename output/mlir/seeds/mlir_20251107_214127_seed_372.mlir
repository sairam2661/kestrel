"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "fuzz_spirv_func"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlagWithNone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlagWithNone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%2) ({
    ^bb1:
      %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflowFlagWithNone}> : (i32, i32) -> i32
      "func.return"(%3) : (i32) -> ()
    }, {
    ^bb2:
      %4 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflowFlagWithNone}> : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()