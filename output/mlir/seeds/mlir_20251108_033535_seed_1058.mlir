"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_loop_and_conditional"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 5 : index}> : () -> index
    "scf.for"(%0, %1, %2) ({
    ^bb1(%arg0: index):
      %4 = "arith.cmpf"(%arg0, %3) <{operation = "lt"}> : (index, index) -> i1
      "scf.if"(%4) ({
        %5 = "arith.addi"(%arg0, %2) : (index, index) -> index
        "scf.yield"(%5) : (index) -> ()
      }, {
        "scf.yield"(%arg0) : (index) -> ()
      }) : (i1) -> (index)
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()