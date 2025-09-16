"builtin.module"() ({
  "smt.solver"() ({
    "smt.check"() ({
      "smt.yield"() : () -> ()
    }, {
      "smt.yield"() : () -> ()
    }, {
      %0 = "smt.constant"() <{value = true}> : () -> !smt.bool
      "smt.yield"() : () -> ()
    }) : () -> ()
    "smt.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()

