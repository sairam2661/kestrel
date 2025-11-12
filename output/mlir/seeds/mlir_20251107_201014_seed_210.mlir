"builtin.module"() ({
  "func.func"() <{function_type = (memref<256xi32>, memref<256xi32>, memref<256xi32>) -> (), sym_name = "vector_addition"}> ({
  ^bb0(%arg0: memref<256xi32>, %arg1: memref<256xi32>, %arg2: memref<256xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 256 : index}> : () -> index
    "scf.for"(%0, %1, %0) ({
    ^bb0(%arg3: index):
      %2 = "memref.load"(%arg0, %arg3) : (memref<256xi32>, index) -> i32
      %3 = "memref.load"(%arg1, %arg3) : (memref<256xi32>, index) -> i32
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "memref.store"(%4, %arg2, %arg3) : (i32, memref<256xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()