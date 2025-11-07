"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "PathMinimization"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "PathMinimization"}> ({
      %1 = "firrtl.unresolved_path"() <{target = "OMReferenceTarget:~PathMinimization|PathMinimization/child:Child>wire"}> : () -> !firrtl.path
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Child, name = "child", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Child"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "wire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<8>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

