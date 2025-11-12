"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<3x3xi32>) -> (i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: memref<3x3xi32>):
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg0, %c1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%cmp) ({
      %load = "memref.load"(%arg1, %c0, %c0) : (memref<3x3xi32>, i32, i32) -> i32
      %add = "arith.addi"(%load, %c1) : (i32, i32) -> i32
      "memref.store"(%add, %arg1, %c0, %c0) : (i32, memref<3x3xi32>, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }, {
      %load2 = "memref.load"(%arg1, %c1, %c1) : (memref<3x3xi32>, i32, i32) -> i32
      %sub = "arith.subi"(%load2, %c1) : (i32, i32) -> i32
      "memref.store"(%sub, %arg1, %c1, %c1) : (i32, memref<3x3xi32>, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()