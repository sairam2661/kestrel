"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (index, index) -> i1
    %1 = "arith.constant"() <{value = 42 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
    %3 = "scf.if"(%0) ({
      %4 = "arith.addi"(%arg1, %1) : (index, index) -> index
      "scf.yield"(%2, %4) : (index, index) -> ()
    }, {
      %5 = "arith.subi"(%arg0, %1) : (index, index) -> index
      "scf.yield"(%5, %2) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"(%3#0, %3#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()