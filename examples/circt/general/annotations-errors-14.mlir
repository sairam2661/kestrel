"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "InstancePortNotFound"}> ({
    "firrtl.extmodule"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], knownLayers = [], layers = [], parameters = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Ext"}> ({
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "InstancePortNotFound"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Ext, name = "inst", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "circt.test", target = "~InstancePortNotFound|InstancePortNotFound>inst.a"}]} : () -> ()
}) : () -> ()

