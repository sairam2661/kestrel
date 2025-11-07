"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Test"}> ({
    "firrtl.extmodule"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], knownLayers = [], layers = [], parameters = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "ExtTest"}> ({
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Test"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @ExtTest, name = "exttest", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "circt.test", target = "~Test|Test>exttest"}]} : () -> ()
}) : () -> ()

