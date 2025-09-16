"builtin.module"() ({
  %0 = "smt.solver"() ({
    %1 = "arith.constant"() <{value = true}> : () -> i1
    "smt.yield"(%1) : (i1) -> ()
  }) : () -> i1
}) : () -> ()

