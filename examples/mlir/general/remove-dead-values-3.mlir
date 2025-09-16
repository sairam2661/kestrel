"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "cleanable_loop_iter_args_value"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4:2 = "scf.for"(%0, %2, %1, %arg0, %3) ({
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %5 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.yield"(%5, %arg3) : (index, index) -> ()
    }) : (index, index, index, index, index) -> (index, index)
    "func.return"(%4#0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

