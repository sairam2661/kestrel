"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4xi32>) -> (i32, memref<4xi32>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %3 = "arith.addi"(%0, %2) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }, {
      %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %3 = "arith.addi"(%0, %2) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    %4 = "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %5 = "arith.index_cast"(%iv) : (index) -> i32
      %6 = "memref.load"(%arg1, %5) : (memref<4xi32>, i32) -> i32
      %7 = "arith.addi"(%6, %arg0) : (i32, i32) -> i32
      "memref.store"(%7, %arg1, %5) : (i32, memref<4xi32>, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%0, %arg1) : (i32, memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()