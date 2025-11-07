"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [], name = "LocalOnlyAnnotation"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Foo"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "w", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "LocalOnlyAnnotation"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Foo, name = "foo", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) {rawAnnotations = [{class = "circt.testLocalOnly", target = "~LocalOnlyAnnotation|LocalOnlyAnnotation/foo:Foo>w"}]} : () -> ()
}) : () -> ()

