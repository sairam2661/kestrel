"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> index, sym_name = "if_condition_swap"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.xori"(%arg0, %0) : (i1, i1) -> i1
    %2 = "scf.if"(%1) ({
      %4 = "test.origTrue"() : () -> index
      "scf.yield"(%4) : (index) -> ()
    }, {
      %3 = "test.origFalse"() : () -> index
      "scf.yield"(%3) : (index) -> ()
    }) : (i1) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

