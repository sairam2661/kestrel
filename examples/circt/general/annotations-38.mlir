"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "TraceNameAnnotation"}> ({
    "firrtl.extmodule"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], knownLayers = [], layers = [], parameters = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "TraceNameAnnotation"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Foo, name = "foo", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      %0 = "firrtl.wire"() <{annotations = [], name = "w", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
  }) {rawAnnotations = [{chiselTarget = "~TraceNameAnnotation|TraceNameAnnotation", class = "chisel3.experimental.Trace$TraceNameAnnotation", target = "~TraceNameAnnotation|TraceNameAnnotation"}, {chiselTarget = "~TraceNameAnnotation|Foo", class = "chisel3.experimental.Trace$TraceNameAnnotation", target = "~TraceNameAnnotation|Foo"}, {chiselTarget = "~TraceNameAnnotation|TraceNameAnnotation/foo:Foo", class = "chisel3.experimental.Trace$TraceNameAnnotation", target = "~TraceNameAnnotation|TraceNameAnnotation/foo:Foo"}, {chiselTarget = "~TraceNameAnnotation|TraceNameAnnotation>w", class = "chisel3.experimental.Trace$TraceNameAnnotation", target = "~TraceNameAnnotation|TraceNameAnnotation>w"}]} : () -> ()
}) : () -> ()

