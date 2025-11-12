"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x2xi32>, memref<3x2xi32>) -> memref<3x2xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: memref<3x2xi32>, %arg1: memref<3x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    "scf.for"(%0, %1, %2) ({
    ^bb1(%arg2: index):
      "scf.for"(%0, %1, %2) ({
      ^bb2(%arg3: index):
        %3 = "memref.load"(%arg0, %arg2, %arg3) : (memref<3x2xi32>, index, index) -> i32
        %4 = "memref.load"(%arg1, %arg2, %arg3) : (memref<3x2xi32>, index, index) -> i32
        %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
        "memref.store"(%5, %arg0, %arg2, %arg3) : (i32, memref<3x2xi32>, index, index)
        "scf.yield"() : () -> ()
      }) : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index) -> ()
    "func.return"(%arg0) : (memref<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()