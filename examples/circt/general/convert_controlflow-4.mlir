"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 38 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<38xi32>
    %5 = "memref.load"(%4, %2) : (memref<38xi32>, index) -> i32
    %6 = "scf.while"(%2) ({
    ^bb0(%arg1: index):
      %8 = "arith.cmpi"(%arg1, %0) <{predicate = 2 : i64}> : (index, index) -> i1
      "scf.condition"(%8, %arg1) : (i1, index) -> ()
    }, {
    ^bb0(%arg0: index):
      "memref.store"(%5, %4, %arg0) : (i32, memref<38xi32>, index) -> ()
      %7 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"(%7) : (index) -> ()
    }) : (index) -> index
    "memref.store"(%5, %4, %1) : (i32, memref<38xi32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

