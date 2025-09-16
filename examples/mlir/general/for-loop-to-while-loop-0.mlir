"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi32>, index, i32) -> (), sym_name = "single_loop"}> ({
  ^bb0(%arg0: memref<?xi32>, %arg1: index, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%0, %arg1, %1) ({
    ^bb0(%arg3: index):
      %2 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "memref.store"(%2, %arg0, %arg3) : (i32, memref<?xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

