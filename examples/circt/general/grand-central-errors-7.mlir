"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [{class = "sifive.enterprise.grandcentral.AugmentedBundleType", defName = "Foo", elements = [{class = "sifive.enterprise.grandcentral.AugmentedGroundType", description = "description of foo", id = 1 : i64, name = "foo"}], id = 0 : i64, name = "Foo"}], name = "InvalidField"}> ({
    "firrtl.module"() <{annotations = [{class = "sifive.enterprise.grandcentral.ViewAnnotation.companion", defName = "Foo", id = 0 : i64, name = "Foo"}], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Companion"}> ({
      %0 = "firrtl.wire"() <{annotations = [{class = "sifive.enterprise.grandcentral.AugmentedGroundType", id = 1 : i64}], name = "node", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "InvalidField"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Companion, name = "companion", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

