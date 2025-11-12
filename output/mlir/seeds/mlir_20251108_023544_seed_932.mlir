"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "cross_dialect_mystery"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 14}> : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb1:
      %2 = "arith.constant"() <{value = 42}> : () -> i32
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()