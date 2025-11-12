"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (i32, i32), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg2, "slt") : (i32, i32) -> i1
    %2 = "tosa.const"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.addi"(%arg2, %2) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%0, %3, "slt") : (i32, i32) -> i1
    %5 = "arith.cmpi"(%1, %4, "eq") : (i1, i1) -> i1
    %6 = "arith.select"(%5, %0, %3) : (i1, i32, i32) -> i32
    "scf.if"(%1) ({
    ^bb0:
      %7 = "arith.addi"(%0, %3) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%6, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()