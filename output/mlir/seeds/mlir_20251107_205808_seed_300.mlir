"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> (i64, i64), sym_name = "complex_add_and_if"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.cmpi"("slt", %0, 100) : (i64, i64) -> i1
    "scf.if"(%1) ({
    ^bb1(%c0: i1):
      %2 = "arith.addi"(%0, 100) : (i64, i64) -> i64
      "scf.yield"(%2) : (i64) -> i64
    }) {
    } : (i1) -> (i64)
    "func.return"(%0, %1) : (i64, i1) -> ()
  }) : () -> ()
}) : () -> ()