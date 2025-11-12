"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: index):
      %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      %1 = "arith.cmpi"(%0, %arg0, "ne") : (index, index) -> i1
      %2 = "arith.select"(%1, %arg0, %0) : (i1, index, index) -> index
      %3 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %4 = "arith.addi"(%arg0, %3) : (index, i32) -> i32
      "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()