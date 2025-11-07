"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "IntWidths"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Bar"}> ({
      %2 = "firrtl.wire"() <{annotations = [], name = "y", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<4>
      %3 = "firrtl.invalidvalue"() : () -> !firrtl.uint<4>
      "firrtl.matchingconnect"(%2, %3) : (!firrtl.uint<4>, !firrtl.uint<4>) -> ()
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "IntWidths"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Bar, name = "bar", nameKind = #firrtl<name_kind interesting_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      %0 = "firrtl.wire"() <{annotations = [], name = "x", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint
      %1 = "firrtl.invalidvalue"() : () -> !firrtl.uint
      "firrtl.connect"(%0, %1) : (!firrtl.uint, !firrtl.uint) -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "firrtl.passes.wiring.SourceAnnotation", pin = "xyz", target = "~IntWidths|Bar>y"}, {class = "firrtl.passes.wiring.SinkAnnotation", pin = "xyz", target = "~IntWidths|IntWidths>x"}]} : () -> ()
}) : () -> ()

