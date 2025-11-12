"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %4 = "arith.cmpi"("slt", %arg0, %0) : (i32, i32) -> i1
    %5 = "arith.cmpi"("slt", %arg1, %1) : (i64, i64) -> i1
    %6 = "scf.if"(%4) ({
      %7 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
      "scf.yield" = #scf_if_yield
    } : (i1) -> (i32)
    %8 = "scf.if"(%5) ({
      %9 = "arith.addi"(%arg1, %3) : (i64, i64) -> i64
      "scf.yield"(%9) : (i64) -> ()
    }) {
      "scf.yield" = #scf_if_yield
    } : (i1) -> (i64)
    "func.return"(%6, %8) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()