"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>, index) -> (), sym_name = "resourceRetain", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.resource<transient>, %arg1: index):
    "stream.resource.retain"(%arg0, %arg1) : (!stream.resource<transient>, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

