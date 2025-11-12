"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<2xi32>) -> (i32, memref<2xi32>), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: memref<2xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg0) : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %0) : (i1, i32, i32) -> i32
    %3 = "arith.mulf"(%2, %2) : (i32, i32) -> f32
    %4 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> index
    %5 = "memref.load"(%arg1, %4) : (memref<2xi32>, index) -> i32
    %6 = "arith.addi"(%5, %2) : (i32, i32) -> i32
    %7 = "memref.store"(%6, %arg1, %4) : (i32, memref<2xi32>, index) -> ()
    "func.return"(%2, %arg1) : (i32, memref<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()