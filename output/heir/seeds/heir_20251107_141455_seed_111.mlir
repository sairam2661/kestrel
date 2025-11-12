"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i8, i8) -> i1
    %2 = "scf.if"(%1) ({
    ^bb0(%arg2: i1):
      %3 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
    ^bb1(%arg2: i1):
      %3 = "arith.subi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()