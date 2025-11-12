"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (), sym_name = "missingAffinity", sym_visibility = "public"}> ({
  ^bb0(%arg0: index):
    %0 = "stream.async.alloca"(%arg0) : (index) -> !stream.resource<transient>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

