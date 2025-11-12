"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "no_annotation_no_unroll"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg0: index):
      "unregistered.loop_body"(%arg0) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

