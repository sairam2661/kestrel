"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<10xi32>) -> (memref<10xi32>), sym_name = "load_store_fuzz"}> ({
  ^bb0(%arg0: i32, %arg1: memref<10xi32>):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 9 : index}> : () -> index
    "scf.for"(%1, %2, %2) ({
    ^bb1(%arg2: index):
      %3 = "memref.load"(%arg1, %arg2) : (memref<10xi32>, index) -> i32
      %4 = "arith.addi"(%3, %arg0) <{overflowFlags = #arith_overflowModes_wrap}> : (i32, i32) -> i32
      "memref.store"(%4, %arg1, %arg2) : (i32, memref<10xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%arg1) : (memref<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()