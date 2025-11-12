"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>, memref<4xi32>) -> memref<4xi32>, sym_name = "test_memref_add"}> ({
    ^bb0(%arg0: memref<4xi32>, %arg1: memref<4xi32>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %4 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      %5 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      %6 = "memref.store"(%4, %arg0, %0) : (i32, memref<4xi32>, i32) -> ()
      %7 = "memref.store"(%5, %arg0, %1) : (i32, memref<4xi32>, i32) -> ()
      %8 = "memref.load"(%arg1, %0) : (memref<4xi32>, i32) -> i32
      %9 = "memref.load"(%arg1, %1) : (memref<4xi32>, i32) -> i32
      %10 = "arith.addi"(%8, %9) : (i32, i32) -> i32
      %11 = "memref.store"(%10, %arg0, %2) : (i32, memref<4xi32>, i32) -> ()
      %12 = "memref.load"(%arg1, %2) : (memref<4xi32>, i32) -> i32
      %13 = "arith.addi"(%12, %3) : (i32, i32) -> i32
      %14 = "memref.store"(%13, %arg0, %3) : (i32, memref<4xi32>, i32) -> ()
      "func.return"(%arg0) : (memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()