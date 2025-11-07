"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "nondet_to_nondet"}> ({
    "verif.refines"() ({
      %2 = "smt.declare_fun"() : () -> !smt.bv<32>
      %3 = "builtin.unrealized_conversion_cast"(%2) : (!smt.bv<32>) -> i32
      "verif.yield"(%3) : (i32) -> ()
    }, {
      %0 = "smt.declare_fun"() : () -> !smt.bv<32>
      %1 = "builtin.unrealized_conversion_cast"(%0) : (!smt.bv<32>) -> i32
      "verif.yield"(%1) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

