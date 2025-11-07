"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "CycleWithoutNames"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "CycleWithoutNames"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      "firrtl.matchingconnect"(%0, %0) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

