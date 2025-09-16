"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "replace_single_iteration_const_diff"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.for"(%arg0, %2, %0) ({
    ^bb0(%arg1: index):
      %3 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "test.consume"(%3) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

