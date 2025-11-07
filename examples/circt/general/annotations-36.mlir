"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "GrandCentralParentIsNotLCA"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Bar"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "a", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Companion"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Bar, name = "bar", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "GrandCentralParentIsNotLCA"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Companion, name = "companion", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "sifive.enterprise.grandcentral.ViewAnnotation", companion = "~GrandCentralParentIsNotLCA|Companion", name = "View", parent = "~GrandCentralParentIsNotLCA|GrandCentralParentIsNotLCA", view = {class = "sifive.enterprise.grandcentral.AugmentedBundleType", defName = "MyInterface", elements = [{name = "b", tpe = {class = "sifive.enterprise.grandcentral.AugmentedGroundType", ref = {circuit = "GrandCentralParentIsNotLCA", component = [], module = "GrandCentralParentIsNotLCA", path = [{_1 = {class = "firrtl.annotations.TargetToken$Instance", value = "companion"}, _2 = {class = "firrtl.annotations.TargetToken$OfModule", value = "Companion"}}, {_1 = {class = "firrtl.annotations.TargetToken$Instance", value = "bar"}, _2 = {class = "firrtl.annotations.TargetToken$OfModule", value = "Bar"}}], ref = "a"}, tpe = "sifive.enterprise.grandcentral.GrandCentralView$UnknownGroundType$"}}]}}]} : () -> ()
}) : () -> ()

