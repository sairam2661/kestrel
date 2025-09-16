"builtin.module"() ({
  "smt.solver"() ({
    %0 = "smt.int.constant"() <{value = 5 : ui4}> : () -> !smt.int
    %1 = "smt.int2bv"(%0) : (!smt.int) -> !smt.bv<4>
    "smt.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()

