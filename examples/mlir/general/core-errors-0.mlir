"builtin.module"() ({
  "smt.solver"() ({
    %0 = "smt.constant"() <{value = true}> : () -> !smt.bool
    %1 = "smt.check"() ({
      "smt.yield"(%0) : (!smt.bool) -> ()
    }, {
      "smt.yield"(%0) : (!smt.bool) -> ()
    }, {
      "smt.yield"(%0) : (!smt.bool) -> ()
    }) : () -> !smt.bool
    "smt.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()

