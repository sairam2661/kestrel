"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "TargetWire"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "TargetWire"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "wire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<8>
      %1 = "firrtl.unresolved_path"() <{target = "OMReferenceTarget:~TargetWire|TargetWire>wire"}> : () -> !firrtl.path
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

