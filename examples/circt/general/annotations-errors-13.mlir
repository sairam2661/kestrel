"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "GCTDataTapUnsupportedLiteral"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "GCTDataTapUnsupportedLiteral"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "tap", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
  }) {rawAnnotations = [{blackBox = "~GCTDataTap|DataTap", class = "sifive.enterprise.grandcentral.DataTapsAnnotation", keys = [{class = "sifive.enterprise.grandcentral.LiteralDataTapKey", literal = "UInt<16>(\22h2a\22)", sink = "~GCTDataTap|GCTDataTap>tap"}]}]} : () -> ()
}) : () -> ()

