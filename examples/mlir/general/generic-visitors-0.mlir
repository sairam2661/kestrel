"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "structured_cfg"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%1, %2, %1) ({
    ^bb0(%arg0: index):
      %3 = "use0"(%arg0) : (index) -> i1
      "scf.if"(%3) ({
        "use1"(%arg0) : (index) -> ()
        "scf.yield"() : () -> ()
      }, {
        "use2"(%arg0) : (index) -> ()
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "use3"(%arg0) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

