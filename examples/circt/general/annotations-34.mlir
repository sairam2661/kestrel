"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Top"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Bar"}> ({
      %1 = "firrtl.wire"() <{annotations = [], name = "inv", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Bar, name = "b", nameKind = #firrtl<name_kind interesting_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Top"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Foo, name = "foo", nameKind = #firrtl<name_kind interesting_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      %0 = "firrtl.wire"() <{annotations = [], name = "tap", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
  }) {rawAnnotations = [{class = "sifive.enterprise.grandcentral.DataTapsAnnotation", keys = [{class = "sifive.enterprise.grandcentral.ReferenceDataTapKey", sink = "~Top|Top>tap", source = "~Top|Top/foo:Foo/b:Bar>inv"}]}]} : () -> ()
}) : () -> ()

