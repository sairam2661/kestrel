"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "MuxSelTooWide"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "MuxSelTooWide"}> ({
      %0 = "firrtl.constant"() <{value = 1 : ui1}> : () -> !firrtl.uint<1>
      %1 = "firrtl.constant"() <{value = 2 : ui2}> : () -> !firrtl.uint<2>
      %2 = "firrtl.wire"() <{annotations = [], name = "", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint
      %3 = "firrtl.mux"(%2, %0, %0) : (!firrtl.uint, !firrtl.uint<1>, !firrtl.uint<1>) -> !firrtl.uint<1>
      "firrtl.connect"(%2, %1) : (!firrtl.uint, !firrtl.uint<2>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

