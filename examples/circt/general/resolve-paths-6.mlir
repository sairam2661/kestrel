"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "NonLocalPath"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "NonLocalPath"}> ({
      %1 = "firrtl.unresolved_path"() <{target = "OMReferenceTarget:~NonLocalPath|NonLocalPath/child0:Child>wire"}> : () -> !firrtl.path
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Child, name = "child0", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Child, name = "child1", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Child"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "wire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<8>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

