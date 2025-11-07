"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "top"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "top"}> ({
      %0 = "firrtl.wire"() <{annotations = [{class = "circt.FullResetAnnotation", resetType = "async"}], name = "innerReset", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      %1 = "firrtl.wire"() <{annotations = [{class = "circt.FullResetAnnotation", resetType = "sync"}], name = "innerReset2", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.asyncreset
      %2 = "firrtl.wire"() <{annotations = [{class = "circt.FullResetAnnotation", resetType = "sync"}], name = "innerReset3", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<2>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

