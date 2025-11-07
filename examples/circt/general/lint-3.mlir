"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "assert_const2"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "assert_const2"}> ({
      %0 = "firrtl.constant"() <{value = 0 : ui1}> : () -> !firrtl.uint<1>
      "firrtl.int.verif.assert"(%0) : (!firrtl.uint<1>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

