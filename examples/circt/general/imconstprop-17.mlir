"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Verbatim"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Verbatim"}> ({
      %0 = "firrtl.verbatim.expr"() <{symbols = [], text = "random.something"}> : () -> !firrtl.uint<1>
      %1 = "firrtl.wire"() <{annotations = [], name = "tap", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      %2 = "firrtl.wire"() <{annotations = [{class = "firrtl.transforms.DontTouchAnnotation"}], name = "fizz", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      "firrtl.matchingconnect"(%2, %1) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
      "firrtl.matchingconnect"(%1, %0) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
      %3 = "firrtl.verbatim.wire"() <{symbols = [], text = "randomBar.b"}> : () -> !firrtl.uint<1>
      %4 = "firrtl.wire"() <{annotations = [], name = "tap2", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
      "firrtl.matchingconnect"(%4, %3) : (!firrtl.uint<1>, !firrtl.uint<1>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

