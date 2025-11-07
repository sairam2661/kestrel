"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<2xi32>, memref<2xi32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: index, %arg1: memref<2xi32>, %arg2: memref<2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.index_switch"(%1) <{cases = array<i64: 2, 5>}> ({
      "scf.yield"() : () -> ()
    }, {
      %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "memref.store"(%3, %arg1, %0) : (i32, memref<2xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
      %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      "memref.store"(%2, %arg2, %0) : (i32, memref<2xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

