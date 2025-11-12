"builtin.module"() ({
  "flow.executable"() <{sym_name = "workgroup_count_region", sym_visibility = "private"}> ({
    "flow.executable.export"() <{function_ref = @dispatch, sym_name = "dispatch", sym_visibility = "public"}> ({
    ^bb0(%arg0: index):
      "flow.return"(%arg0, %arg0, %arg0) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "util.func"() <{function_type = () -> (), sym_name = "dispatch", sym_visibility = "public"}> ({
        "util.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "flow.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

