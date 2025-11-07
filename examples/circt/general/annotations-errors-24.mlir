"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Issue5947"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Issue5947"}> ({
      %0 = "chirrtl.combmem"() <{annotations = [], name = "mem", nameKind = #firrtl<name_kind droppable_name>}> : () -> !chirrtl.cmemory<uint<1>, 2>
    }) : () -> ()
  }) {rawAnnotations = [{class = "circt.test", target = "~Issue5947|Issue5947>mem.a"}]} : () -> ()
}) : () -> ()

