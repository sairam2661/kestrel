"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<40xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 40 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    "scf.for"(%1, %2, %3) ({
    ^bb0(%arg0: index):
      %5 = "memref.load"(%0, %arg0) : (memref<40xi32>, index) -> i32
      %6 = "arith.addi"(%5, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "memref.store"(%6, %0, %arg0) : (i32, memref<40xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

