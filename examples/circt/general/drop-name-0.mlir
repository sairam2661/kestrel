"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Foo"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "a", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
      %1 = "firrtl.wire"() <{annotations = [], name = "_a", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
      %2 = "firrtl.wire"() <{annotations = [], name = "_T", nameKind = #firrtl<name_kind interesting_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

