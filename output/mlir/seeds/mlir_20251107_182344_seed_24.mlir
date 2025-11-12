"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg1, %1, "slt") : (i64, i64) -> i1
    %4 = "scf.if"(%3) <{branch_weights = [1 : i32, 1 : i32]}> ({
      ^bb1:
        %5 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> i32
    }) {
      "scf.yield"=#13
    } : (i1) -> i32
    "func.return"(%2, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()