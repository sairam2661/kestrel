"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4x4xi32>) -> i32, sym_name = "complex_func"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4x4xi32>):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.for"(%1, %0, %2) ({
    ^bb1(%arg2: i32):
      "scf.for"(%1, %0, %2) ({
      ^bb2(%arg3: i32):
        %3 = "memref.load"(%arg1, %arg2, %arg3) : (memref<4x4xi32>, i32, i32) -> i32
        %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
        "memref.store"(%4, %arg1, %arg2, %arg3) : (i32, memref<4x4xi32>, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %5 = "memref.load"(%arg1, %1, %1) : (memref<4x4xi32>, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()