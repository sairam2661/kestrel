"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "BadPathString"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "BadPathString"}> ({
      %0 = "firrtl.unresolved_path"() <{target = "OMDeleted:~Foo|Bar>baz"}> : () -> !firrtl.path
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

