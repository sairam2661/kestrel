"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index), sym_name = "complex_nested_control_flow"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
    "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %3 = "arith.constant"() <{value = 5 : index}> : () -> index
      %4 = "arith.addi"(%iv, %3) : (index, index) -> index
      "scf.if"(%arg0) ({
      ^bb2:
        "scf.yield"() : () -> ()
      }, {
      ^bb3:
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"(%4) : (index) -> ()
    }) : (index) -> ()
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()