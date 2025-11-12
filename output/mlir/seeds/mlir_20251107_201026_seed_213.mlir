"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3xi32>, memref<2x3xi32>) -> memref<2x3xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: memref<2x3xi32>, %arg1: memref<2x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "memref.alloc"() <{shape = [2, 3], elementType = i32}> : () -> memref<2x3xi32>
    "scf.for"(%0, %1, %0) ({
    ^bb1(%arg2: index):
      "scf.for"(%0, %2, %0) ({
      ^bb2(%arg3: index):
        %5 = "memref.load"(%arg0, %arg2, %arg3) : (memref<2x3xi32>, index, index) -> i32
        %6 = "memref.load"(%arg1, %arg2, %arg3) : (memref<2x3xi32>, index, index) -> i32
        %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "memref.store"(%7, %4, %arg2, %arg3) : (i32, memref<2x3xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"(%4) : (memref<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3xi32>, memref<2x3xi32>) -> memref<2x3xi32>, sym_name = "matrix_subtract"}> ({
  ^bb0(%arg0: memref<2x3xi32>, %arg1: memref<2x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "memref.alloc"() <{shape = [2, 3], elementType = i32}> : () -> memref<2x3xi32>
    "scf.for"(%0, %1, %0) ({
    ^bb1(%arg2: index):
      "scf.for"(%0, %2, %0) ({
      ^bb2(%arg3: index):
        %5 = "memref.load"(%arg0, %arg2, %arg3) : (memref<2x3xi32>, index, index) -> i32
        %6 = "memref.load"(%arg1, %arg2, %arg3) : (memref<2x3xi32>, index, index) -> i32
        %7 = "arith.subi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "memref.store"(%7, %4, %arg2, %arg3) : (i32, memref<2x3xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"(%4) : (memref<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3xi32>, memref<2x3xi32>) -> memref<2x3xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: memref<2x3xi32>, %arg1: memref<2x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "memref.alloc"() <{shape = [2, 3], elementType = i32}> : () -> memref<2x3xi32>
    "scf.for"(%0, %1, %0) ({
    ^bb1(%arg2: index):
      "scf.for"(%0, %2, %0) ({
      ^bb2(%arg3: index):
        %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.for"(%0, %2, %0) ({
        ^bb3(%arg4: index):
          %6 = "memref.load"(%arg0, %arg2, %arg4) : (memref<2x3xi32>, index, index) -> i32
          %7 = "memref.load"(%arg1, %arg4, %arg3) : (memref<2x3xi32>, index, index) -> i32
          %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %9 = "arith.addi"(%5, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%9) : (i32) -> ()
        }) : (index, index) -> (i32)
        "memref.store"(%5, %4, %arg2, %arg3) : (i32, memref<2x3xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"(%4) : (memref<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()