"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>, memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "memref.alloc"() <{descriptor = "memref<4x4xi32>"}> : () -> memref<4x4xi32>
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg2: i32):
      "scf.for"(%0, %2, %1) ({
      ^bb0(%arg3: i32):
        %4 = "memref.load"(%arg0, %arg2, %arg3) : (memref<4x4xi32>, i32, i32) -> i32
        %5 = "memref.load"(%arg1, %arg2, %arg3) : (memref<4x4xi32>, i32, i32) -> i32
        %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
        "memref.store"(%6, %arg3, %arg2) : (i32, memref<4x4xi32>, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "func.return"(%3) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()