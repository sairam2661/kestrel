"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<4xi32>, memref<4xi32>) -> index, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: index, %arg1: memref<4xi32>, %arg2: memref<4xi32>):
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %0) : (index, index) -> index
    %3 = "arith.cmpi"(%2, %1, "slt") : (index, index) -> i1
    "scf.if"(%3) ({
    ^bb0:
      %4 = "memref.load"(%arg1, %0) : (memref<4xi32>, index) -> i32
      %5 = "arith.addi"(%4, %0) : (i32, index) -> i32
      "memref.store"(%5, %arg2, %0) : (i32, memref<4xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
    ^bb1:
      %6 = "memref.load"(%arg1, %1) : (memref<4xi32>, index) -> i32
      %7 = "arith.addi"(%6, %1) : (i32, index) -> i32
      "memref.store"(%7, %arg2, %1) : (i32, memref<4xi32>, index) -> ()
      "scf.yield"() : () -> ()
    })
    { }
    : i1 -> ()
    %8 = "arith.addi"(%2, %1) : (index, index) -> index
    "func.return"(%8) : (index) -> ()
  }) : () -> (index, memref<4xi32>, memref<4xi32>)
}) : () -> ()