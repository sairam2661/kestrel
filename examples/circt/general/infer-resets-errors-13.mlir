"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "top"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "top"}> ({
      %0 = "firrtl.wire"() <{annotations = [{class = "circt.ExcludeFromFullResetAnnotation"}], name = "", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.asyncreset
      %1 = "firrtl.node"(%0) <{annotations = [{class = "circt.ExcludeFromFullResetAnnotation"}], name = "", nameKind = #firrtl<name_kind droppable_name>}> : (!firrtl.asyncreset) -> !firrtl.asyncreset
      %2 = "firrtl.asUInt"(%0) {annotations = [{class = "circt.FullResetAnnotation", resetType = "async"}]} : (!firrtl.asyncreset) -> !firrtl.uint<1>
      %3 = "firrtl.asUInt"(%0) {annotations = [{class = "circt.ExcludeFromFullResetAnnotation"}]} : (!firrtl.asyncreset) -> !firrtl.uint<1>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

