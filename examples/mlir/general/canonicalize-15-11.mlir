"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (index, index), sym_name = "to_select_same_val"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2:2 = "scf.if"(%arg0) ({
      "scf.yield"(%0, %1) : (index, index) -> ()
    }, {
      "scf.yield"(%1, %1) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"(%2#0, %2#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

