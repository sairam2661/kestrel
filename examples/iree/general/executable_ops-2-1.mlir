"builtin.module"() ({
  "stream.executable"() <{sym_name = "executable_with_workgroup_count", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @dispatch, sym_name = "dispatch", sym_visibility = "public"}> ({
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      "stream.return"(%arg0, %arg1, %arg2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "util.func"() <{function_type = () -> (), sym_name = "dispatch", sym_visibility = "private"}> ({
        "util.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) : () -> ()

