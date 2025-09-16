"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unnormalized_loops"}> ({
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 5 : index}> : () -> index
    %3 = "arith.constant"() <{value = 7 : index}> : () -> index
    %4 = "arith.constant"() <{value = 10 : index}> : () -> index
    %5 = "arith.constant"() <{value = 17 : index}> : () -> index
    "scf.for"(%2, %4, %0) ({
    ^bb0(%arg0: index):
      "scf.for"(%3, %5, %1) ({
      ^bb0(%arg1: index):
        "use"(%arg0, %arg1) : (index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

