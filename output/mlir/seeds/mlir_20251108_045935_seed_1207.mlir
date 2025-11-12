"builtin.module"() ({
  "func.func"() <{function_type = (i64, memref<4x4xi8>) -> (i64, memref<4x4xi8>), sym_name = "complex_arith_and_llvm"}> ({
  ^bb0(%arg0: i64, %arg1: memref<4x4xi8>):
    %0 = "arith.constant"() <{value = 1234567890 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    %2 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.extui"(%2) : (i32) -> i64
    %4 = "arith.addi"(%1, %3) : (i64, i64) -> i64
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "arith.extui"(%5) : (i32) -> i64
    %7 = "arith.subi"(%4, %6) : (i64, i64) -> i64
    %8 = "memref.get_global"() <{name = "global_memref", type = memref<4x4xi8>}> : () -> memref<4x4xi8>
    %9 = "memref.get_global"() <{name = "global_memref", type = memref<4x4xi8>}> : () -> memref<4x4xi8>
    "llvm.return"(%7, %9) : (i64, memref<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()