"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "for_normalize_lowerbound"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    "scf.for"(%1, %2, %0) ({
    ^bb0(%arg0: index):
      "iree.keep"(%arg0) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

