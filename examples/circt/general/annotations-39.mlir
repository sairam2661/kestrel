"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Top"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
      %1 = "firrtl.wire"() <{annotations = [], name = "sum", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Top"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Foo, name = "foo", nameKind = #firrtl<name_kind interesting_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      %0 = "firrtl.wire"() <{annotations = [], name = "tap", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<8>
    }) : () -> ()
  }) {rawAnnotations = [{class = "sifive.enterprise.grandcentral.DataTapsAnnotation", keys = [{class = "sifive.enterprise.grandcentral.ReferenceDataTapKey", sink = "~Top|Top>tap", source = "~Top|Foo>sum"}]}]} : () -> ()
}) : () -> ()

