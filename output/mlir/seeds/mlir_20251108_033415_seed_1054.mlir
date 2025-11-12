"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4xi32>) -> (i32, memref<4xi32>), sym_name = "transform_and_modify"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4xi32>):
    %0:2 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %1 = "arith.addi"(%iv, %arg0) : (i32, i32) -> i32
      "memref.store"(%1, %arg1, %iv) : (i32, memref<4xi32>, i32) -> ()
      "scf.yield"() : () -> ()
    }) {control_regions = 0} : (i32) -> ()
    %2 = "arith.muli"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "llvm.mlir.constant"(42) <{dialect = "llvm", type = "i32"}> : () -> i32
    %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    "func.return"(%4, %arg1) : (i32, memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()