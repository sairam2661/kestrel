"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>, memref<4xi32>, memref<4xi32>) -> (), sym_name = "tensor_add"}> ({
  ^bb0(%arg0: memref<4xi32>, %arg1: memref<4xi32>, %arg2: memref<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    "scf.for"(%0, %1, %0) ({
    ^bb1(%i: index):
      %2 = "memref.load"(%arg0, %i) : (memref<4xi32>, index) -> i32
      %3 = "memref.load"(%arg1, %i) : (memref<4xi32>, index) -> i32
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "memref.store"(%4, %arg2, %i) : (i32, memref<4xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()