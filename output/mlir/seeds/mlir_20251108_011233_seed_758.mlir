"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %1) : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb0:
      %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %3 = "arith.mul"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.addi"(%0, %3) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()