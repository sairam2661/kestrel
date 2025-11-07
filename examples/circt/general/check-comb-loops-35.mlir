"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "CycleStartsUnnammed"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "CycleStartsUnnammed"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      %1 = "firrtl.node"(%0) <{annotations = [], name = "n", nameKind = #firrtl<name_kind droppable_name>}> : (!firrtl.uint<1>) -> !firrtl.uint<1>
      "firrtl.matchingconnect"(%0, %1) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

