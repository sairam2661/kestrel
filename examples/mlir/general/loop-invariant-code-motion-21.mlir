"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, i32) -> (), sym_name = "invariant_subgraph"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: i32):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg4: index):
      %0 = "arith.addi"(%arg3, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %1 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "test.sink"(%1) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

