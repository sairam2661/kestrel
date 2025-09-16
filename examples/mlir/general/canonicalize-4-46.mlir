"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "test_andi_not_fold_rhs"}> ({
  ^bb0(%arg1: index):
    %3 = "arith.constant"() <{value = -1 : index}> : () -> index
    %4 = "arith.xori"(%arg1, %3) : (index, index) -> index
    %5 = "arith.andi"(%arg1, %4) : (index, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> index, sym_name = "test_andi_not_fold_lhs"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = -1 : index}> : () -> index
    %1 = "arith.xori"(%arg0, %0) : (index, index) -> index
    %2 = "arith.andi"(%1, %arg0) : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

