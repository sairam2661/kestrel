"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "UnrealizedConversionCast"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "UnrealizedConversionCast"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "b", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<32>
      %1 = "builtin.unrealized_conversion_cast"(%0) : (!firrtl.uint<32>) -> !firrtl.uint<32>
      "firrtl.matchingconnect"(%0, %1) : (!firrtl.uint<32>, !firrtl.uint<32>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

