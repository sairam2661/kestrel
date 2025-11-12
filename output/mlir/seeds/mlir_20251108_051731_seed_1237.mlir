"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_int_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%1, %arg0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %2, "slt") : (i32, i32) -> i1
    "scf.if"(%3) ({
    ^bb1:
      "func.return"(%2, %0) : (i32, i64) -> ()
    }) {
    } : (i1) -> ()
  }) : () -> ()
}) : () -> ()