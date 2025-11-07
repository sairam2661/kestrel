"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<40xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    "scf.for"(%1, %arg0, %2) ({
    ^bb0(%arg1: index):
      %4 = "memref.load"(%0, %arg1) : (memref<40xi32>, index) -> i32
      %5 = "arith.addi"(%4, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "memref.store"(%5, %0, %arg1) : (i32, memref<40xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

