"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4x10xi64>) -> (i32, memref<4x10xi64>), sym_name = "complex_mixed_op"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4x10xi64>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      "scf.yield"(%arg0) : (i32) -> ()
    }) : (i1) -> i32
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.constant"() <{value = 10 : index}> : () -> index
    %6 = "scf.for"(%4, %5, %4, %arg1) ({
    ^bb1(%arg2: index, %arg3: memref<4x10xi64>):
      %7 = "arith.constant"() <{value = 100 : i64}> : () -> i64
      %8 = "arith.addi"(%arg2, %4) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
      "scf.yield"(%arg3, %8) : (memref<4x10xi64>, index) -> ()
    }) : (memref<4x10xi64>, index) -> memref<4x10xi64>
    "func.return"(%2, %6) : (i32, memref<4x10xi64>) -> ()
  }) : () -> ()
}) : () -> ()