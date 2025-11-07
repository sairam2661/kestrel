"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "ResetToI1"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Bar"}> ({
      %2 = "firrtl.wire"() <{annotations = [], name = "y", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.reset
      %3 = "firrtl.invalidvalue"() : () -> !firrtl.reset
      "firrtl.matchingconnect"(%2, %3) : (!firrtl.reset, !firrtl.reset) -> ()
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "ResetToI1"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Bar, name = "bar", nameKind = #firrtl<name_kind interesting_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      %0 = "firrtl.wire"() <{annotations = [], name = "x", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
      %1 = "firrtl.invalidvalue"() : () -> !firrtl.uint<1>
      "firrtl.matchingconnect"(%0, %1) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "firrtl.passes.wiring.SourceAnnotation", pin = "xyz", target = "~ResetToI1|Bar>y"}, {class = "firrtl.passes.wiring.SinkAnnotation", pin = "xyz", target = "~ResetToI1|ResetToI1>x"}]} : () -> ()
}) : () -> ()

