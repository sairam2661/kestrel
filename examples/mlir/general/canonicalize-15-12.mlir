"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> index, sym_name = "to_select_with_body"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.if"(%arg0) ({
      "test.op"() : () -> ()
      "scf.yield"(%0) : (index) -> ()
    }, {
      "scf.yield"(%1) : (index) -> ()
    }) : (i1) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

