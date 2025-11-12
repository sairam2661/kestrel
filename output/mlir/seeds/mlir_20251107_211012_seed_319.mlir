"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index), sym_name = "complex_index_ops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
    %1 = "arith.addi"(%0, %arg1) : (index, index) -> index
    %2 = "arith.addi"(%1, %arg0) : (index, index) -> index
    %3 = "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %4 = "arith.addi"(%iv, %arg1) : (index, index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) : (index) -> (index)
    %5 = "arith.addi"(%2, %3) : (index, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()