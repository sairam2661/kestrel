"builtin.module"() ({
  "func.func"() <{function_type = (!smt.bv<1>) -> (), sym_name = "assert_with_unsupported_property_type"}> ({
  ^bb0(%arg0: !smt.bv<1>):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (!smt.bv<1>) -> !ltl.property
    "verif.assert"(%0) : (!ltl.property) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

