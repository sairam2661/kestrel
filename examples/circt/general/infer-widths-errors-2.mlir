"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Issue1255"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Issue1255"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "tmp74", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint
      %1 = "firrtl.constant"() <{value = 14972 : ui20}> : () -> !firrtl.uint
      %2 = "firrtl.tail"(%1) <{amount = 15 : i32}> : (!firrtl.uint) -> !firrtl.uint
      "firrtl.connect"(%0, %2) : (!firrtl.uint, !firrtl.uint) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

