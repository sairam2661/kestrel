"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "top"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "top"}> ({
      %0 = "firrtl.wire"() <{annotations = [{class = "circt.FullResetAnnotation", resetType = "async"}], name = "innerReset", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.reset
      %1 = "firrtl.invalidvalue"() : () -> !firrtl.reset
      "firrtl.matchingconnect"(%0, %1) : (!firrtl.reset, !firrtl.reset) -> ()
      %2 = "firrtl.wire"() <{annotations = [{class = "circt.FullResetAnnotation", resetType = "sync"}], name = "innerReset2", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.reset
      %3 = "firrtl.wire"() <{annotations = [], name = "asyncWire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.asyncreset
      "firrtl.connect"(%2, %3) : (!firrtl.reset, !firrtl.asyncreset) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

