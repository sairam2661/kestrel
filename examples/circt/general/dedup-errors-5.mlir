"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [{class = "firrtl.transforms.MustDeduplicateAnnotation", modules = ["~MustDedup|Test0", "~MustDedup|Test1"]}], name = "MustDedup"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Test0"}> ({
      "test"() : () -> ()
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "Test1"}> ({
      %0 = "test"() : () -> i32
    }) {sym_visibility = "private"} : () -> ()
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "MustDedup"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Test0, name = "test0", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @Test1, name = "test1", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

