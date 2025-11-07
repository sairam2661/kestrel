"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "func"}> ({
  ^bb0(%arg2: i32):
    "func.return"(%arg2) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64xi32>
    %4 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64xi32>
    %5 = "scf.while"(%0) ({
    ^bb0(%arg1: index):
      %9 = "arith.cmpi"(%arg1, %2) <{predicate = 6 : i64}> : (index, index) -> i1
      "scf.condition"(%9, %arg1) : (i1, index) -> ()
    }, {
    ^bb0(%arg0: index):
      %6 = "memref.load"(%3, %arg0) : (memref<64xi32>, index) -> i32
      %7 = "func.call"(%6) <{callee = @func}> : (i32) -> i32
      "memref.store"(%7, %4, %arg0) : (i32, memref<64xi32>, index) -> ()
      %8 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"(%8) : (index) -> ()
    }) : (index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

