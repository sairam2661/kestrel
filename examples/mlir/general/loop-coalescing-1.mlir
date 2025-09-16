"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_use"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%1, %2, %1) ({
    ^bb0(%arg0: index):
      "scf.for"(%1, %2, %1) ({
      ^bb0(%arg1: index):
        "scf.for"(%1, %2, %1) ({
        ^bb0(%arg2: index):
          "use1"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
          "use2"(%arg0, %arg2, %arg1) : (index, index, index) -> ()
          "use3"(%arg2, %arg1, %arg0) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

