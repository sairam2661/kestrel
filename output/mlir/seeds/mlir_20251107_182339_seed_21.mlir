"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 1234567890123456789 : i64}> : () -> i64
    %2 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %3 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
    ^bb1:
      %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> i32
    }) : (i1) -> i32
    "func.return"(%4, %2) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()