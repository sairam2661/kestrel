"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "Foo"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "bar", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
  }) {rawAnnotations = [{class = "circt.test", data = "a", target = "~Foo|Foo>bar"}, {class = "circt.test", data = "b", target = "Foo.Foo.bar"}]} : () -> ()
}) : () -> ()

