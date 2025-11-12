"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>, memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "memref.alloc"() <{memref_type = memref<4x4xi32>}> : () -> memref<4x4xi32>
    "scf.for"(%0, %1, %2) ({
    ^bb0(%arg2: index):
      "scf.for"(%0, %1, %2) ({
      ^bb0(%arg3: index):
        %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.for"(%0, %1, %2) ({
        ^bb0(%arg4: index):
          %5 = "memref.load"(%arg0, %arg2, %arg4) : (memref<4x4xi32>, index, index) -> i32
          %6 = "memref.load"(%arg1, %arg4, %arg3) : (memref<4x4xi32>, index, index) -> i32
          %7 = "arith.muli"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %8 = "memref.load"(%3, %arg2, %arg3) : (memref<4x4xi32>, index, index) -> i32
          %9 = "arith.addi"(%8, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "memref.store"(%9, %3, %arg2, %arg3) : (i32, memref<4x4xi32>, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%3) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()