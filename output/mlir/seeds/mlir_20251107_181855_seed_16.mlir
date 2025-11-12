"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i64, i64, i32) -> i1
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.cmpi"(%2, %arg0, "slt") : (i32, i32, i32) -> i1
    %4 = "scf.if"(%1) ({
      ^bb1(%arg2: i1):
        %5 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
        scf.yield %5 : i32
    }) : (i1) -> i32
    %6 = "scf.if"(%3) ({
      ^bb2(%arg4: i1):
        %7 = "arith.addi"(%arg1, %2) : (i64, i32) -> i64
        scf.yield %7 : i64
    }) : (i1) -> i64
    "func.return"(%4, %6) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()