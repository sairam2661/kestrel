"builtin.module"() ({
  "firrtl.circuit"() <{annotations = [{class = "firrtl.transforms.BlackBoxTargetDirAnno", targetDir = "ignore_me_plz"}, {class = "firrtl.transforms.BlackBoxTargetDirAnno", targetDir = "magic"}], name = "test_mod"}> ({
    "firrtl.module"() <{annotations = [], convention = #firrtl<convention internal>, domainInfo = [], layers = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "test_mod"}> ({
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @ExtInline, name = "foo", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
      "firrtl.instance"() <{annotations = [], domainInfo = [], layers = [], moduleName = @ExtPath, name = "gib", nameKind = #firrtl<name_kind droppable_name>, portAnnotations = [], portDirections = array<i1>, portNames = []}> : () -> ()
    }) : () -> ()
    "firrtl.extmodule"() <{annotations = [{class = "firrtl.transforms.BlackBoxInlineAnno", name = "blackbox-inline.v", text = "module ExtInline(); endmodule\0A"}, {class = "firrtl.transforms.BlackBoxInlineAnno", name = "blackbox-inline.v", text = "module ExtInline(); endmodule\0A"}, {class = "firrtl.transforms.BlackBoxInlineAnno", name = "blackbox-inline.svh", text = "`define SOME_MACRO\0A"}], convention = #firrtl<convention internal>, defname = "ExtInline", domainInfo = [], knownLayers = [], layers = [], parameters = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "ExtInline"}> ({
    }) : () -> ()
    "firrtl.extmodule"() <{annotations = [{class = "firrtl.transforms.BlackBoxPathAnno", path = "blackbox-path.v"}], convention = #firrtl<convention internal>, defname = "ExtPath", domainInfo = [], knownLayers = [], layers = [], parameters = [], portAnnotations = [], portDirections = array<i1>, portLocations = [], portNames = [], portSymbols = [], portTypes = [], sym_name = "ExtPath"}> ({
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

