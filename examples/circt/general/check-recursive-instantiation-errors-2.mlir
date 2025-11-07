"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "TwoLoops"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "TwoLoops"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @TwoLoops, name = "inst", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @OtherModule, name = "inst", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "OtherModule"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @OtherModule, name = "inst", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

