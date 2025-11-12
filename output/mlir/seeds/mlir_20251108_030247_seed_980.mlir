"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xi32>, index) -> index, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: memref<10x10xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    "scf.for"(%0, %arg1, %1) ({
    ^bb0(%arg2: index):
      "scf.for"(%0, %arg2, %1) ({
      ^bb0(%arg3: index):
        %2:2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_mode_any}> : (index, index) -> (index, index)
        "memref.store"(%2#0, %arg0, %arg2, %arg3) : (index, memref<10x10xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    %3 = "arith.constant"() <{value = 5 : index}> : () -> index
    "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflow_mode_any}> : (index, index) -> index
    "func.return"(%arg1) : (index) -> ()
  }) : () -> ()
}) : () -> ()