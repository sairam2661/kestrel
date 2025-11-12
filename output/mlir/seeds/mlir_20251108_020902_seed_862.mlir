"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %1) <{overflow = "undefined"}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()