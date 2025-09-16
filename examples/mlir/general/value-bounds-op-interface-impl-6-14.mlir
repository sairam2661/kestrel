"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scf_for_induction_var_upper_bound"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 8 : index}> : () -> index
    %7 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%0, %7, %4) ({
    ^bb0(%arg1: index):
      "test.compare"(%arg1, %6) <{cmp = "LE"}> : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "scf.for"(%2, %6, %3) ({
    ^bb0(%arg0: index):
      "test.compare"(%arg0, %5) <{cmp = "LE"}> : (index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

