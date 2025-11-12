"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_example"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (i64, i64) -> i64
    "scf.if"(%arg0) ({
    ^bb0:
      %4 = "arith.cmpi"(%arg0, %2, "slt") : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%2, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()