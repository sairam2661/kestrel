"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "MuxSelBackProp"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "MuxSelBackProp"}> ({
      %0 = "firrtl.constant"() <{value = 1 : ui1}> : () -> !firrtl.uint<1>
      %1 = "firrtl.wire"() <{annotations = [], name = "", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint
      %2 = "firrtl.mux"(%1, %0, %0) : (!firrtl.uint, !firrtl.uint<1>, !firrtl.uint<1>) -> !firrtl.uint<1>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

