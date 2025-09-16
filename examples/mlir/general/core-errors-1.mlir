"builtin.module"() ({
  "smt.solver"() ({
    "smt.check"() ({
      %0 = "smt.constant"() <{value = true}> : () -> !smt.bool
      "smt.yield"() : () -> ()
    }, {
      "smt.yield"() : () -> ()
    }, {
      "smt.yield"() : () -> ()
    }) : () -> ()
    "smt.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()

