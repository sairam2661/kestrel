"builtin.module"() ({
  "smt.solver"() ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    "smt.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()

