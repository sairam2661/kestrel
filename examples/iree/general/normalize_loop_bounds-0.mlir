"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "for_normalize_step"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg0: index):
      "iree.keep"(%arg0) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

