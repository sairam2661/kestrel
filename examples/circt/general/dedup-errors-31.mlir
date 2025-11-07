"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [{class = "firrtl.transforms.MustDeduplicateAnnotation", modules = ["~|Test0", "~|Test1"]}], name = "VisibilityDoesNotBlockDedup"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Test0"}> ({
      %1 = "firrtl.wire"() <{annotations = [], name = "wire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<1>
    }) : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Test1"}> ({
      %0 = "firrtl.wire"() <{annotations = [], name = "wire", nameKind = #firrtl<name_kind droppable_name>}> : () -> !firrtl.uint<2>
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "VisibilityDoesNotBlockDedup"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Test0, name = "test0", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Test1, name = "test1", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

