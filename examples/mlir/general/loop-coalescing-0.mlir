"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "one_3d_nest"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 42 : index}> : () -> index
    %5 = "arith.constant"() <{value = 56 : index}> : () -> index
    "scf.for"(%0, %4, %1) ({
    ^bb0(%arg0: index):
      "scf.for"(%0, %5, %1) ({
      ^bb0(%arg1: index):
        "scf.for"(%0, %3, %1) ({
        ^bb0(%arg2: index):
          "use"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

